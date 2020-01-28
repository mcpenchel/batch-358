require "csv"
require_relative "player"

class PlayerRepository

  attr_reader :players

  def initialize(csv_file_path, team_repository)
    @csv_file_path = csv_file_path
    @team_repository = team_repository

    @players = [] # Array of Player instances

    @next_id = 1

    load_csv
  end

  def add(player)
    player.id = @next_id
    @players << player

    @next_id += 1

    # save_to_csv
  end

  private
  def load_csv
    @next_id = 0

    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:number] = row[:number].to_i
      row[:injured] = row[:injured] == "true"

      player = Player.new(row)
      player.team = @team_repository.find(row[:team_id].to_i)

      @next_id = row[:id]

      @players << player
    end

    @next_id += 1
  end
end
