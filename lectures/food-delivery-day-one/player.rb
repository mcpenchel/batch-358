class Player

  attr_reader :name, :position, :number, :injured
  attr_accessor :id, :team

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @position = attributes[:position]
    @number = attributes[:number]
    @injured = attributes[:injured] || false
    @team = attributes[:team]
  end

  def heal
    @injured = false
  end

  def hurt
    @injured = true
  end
end
