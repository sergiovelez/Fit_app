class Exercise < ApplicationRecord
  has_and_belongs_to_many :equipment
  has_and_belongs_to_many :routines
  has_and_belongs_to_many :muscle_groups
end
