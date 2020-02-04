class Intern < ActiveRecord::Base
  belongs_to :doctor

  has_many :patients
end
