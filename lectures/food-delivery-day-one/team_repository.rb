require "csv"
require_relative "team"

class TeamRepository
  attr_reader :teams

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @teams = []

    # We should worry about the next_id of the team
    # IF our program gives us the option of adding new teams.

    # If it doesn't, no need to worry about that.

    load_csv
  end

  def find(team_id)
    @teams.find { |team| team.id == team_id }
  end

  private
  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:budget] = row[:budget].to_i
      row[:ranking] = row[:ranking].to_i

      @teams << Team.new(row)
    end
  end
end
