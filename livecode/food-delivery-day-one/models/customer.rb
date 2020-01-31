class Customer

  attr_reader :name, :address
  attr_accessor :id

  def initialize(attributes = {})
    @name = attributes[:name]
    @address = attributes[:address]
    @id = attributes[:id]
  end

  def self.headers
    ['id', 'name', 'address']
  end

  def to_csv
    [@id, @name, @address]
  end
end
