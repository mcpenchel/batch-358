class User < ActiveRecord::Base
  has_many :readings
  has_many :books, through: :readings
end
