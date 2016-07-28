class Exercise < ApplicationRecord
  has_many_and_belongs_to :equipment
  has_many_and_belongs_to :routines
  has_many_and_belongs_to :muscle_groups
end
