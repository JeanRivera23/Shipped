class Boat < ApplicationRecord
  has_many :assignments
  has_many :jobs, through: :assignments
end
