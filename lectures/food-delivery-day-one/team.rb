class Team
  attr_reader :name, :location
  attr_accessor :id, :ranking

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @location = attributes[:location]
    @ranking = attributes[:ranking] || 20
    @players = attributes[:players] || []
  end

  def hire(player)
    @players << player
    player.team = self
  end

end
