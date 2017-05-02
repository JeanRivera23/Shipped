class Boat < ApplicationRecord
  has_many :assignments
  has_many :jobs, through: :assignments

  validates_associated :jobs
  validates :name, uniqueness: true
  validates :containers, numericality: true
end
