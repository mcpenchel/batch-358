class Customer

  attr_reader :name, :address
  attr_accessor :id

  def initialize(attributes = {})
    @name = attributes[:name]
    @address = attributes[:address]
    @id = attributes[:id]
  end
end
