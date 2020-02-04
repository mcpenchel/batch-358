class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations

  has_many :patients, through: :consultations

  validates :last_name, presence: true

  # validates :first_name, uniqueness: true
  # validates :last_name, uniqueness: true

  validates :last_name, uniqueness: { scope: :first_name }
  # validates :first_name, uniqueness: { scope: :last_name }
end
