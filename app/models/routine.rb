class Routine < ApplicationRecord
  has_and_belongs_to_many :exercises

  def build_routine(mg1, mg2)#mucsle group 1 and 2
    routine1 = []
    Exercise.where(muscle_groups: warmup)
  end
end
