class Patient < ActiveRecord::Base
  belongs_to :intern

  has_many :consultations

  has_many :doctors, through: :consultations
end
