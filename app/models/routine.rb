class Routine < ApplicationRecord
  has_and_belongs_to_many :exercises

  def self.build_routine
    routine = []

    routine << Exercise.where(difficulty: 3).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'warmup'}
    end.sample(2)
    p routine.last

    routine << Exercise.where(difficulty: 2).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'legs'} && d.muscle_groups.any?{|mg| mg.name == 'shoulders'}
    end.sample(2)
    p routine.last


    routine << Exercise.where(difficulty: 1).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'legs'} && d.muscle_groups.any?{|mg| mg.name == 'shoulders'}
    end.sample
    p routine.last


    routine <<  Exercise.where(difficulty: 3).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'legs'}
    end.sample
    p routine.last


    routine << Exercise.where(difficulty: 2).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'legs'} && d.muscle_groups.any?{|mg| mg.name == 'shoulders'}
    end.sample(2)
    p routine.last

    routine << Exercise.where(difficulty: 1).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'legs'} && d.muscle_groups.any?{|mg| mg.name == 'shoulders'}
    end.sample
    p routine.last

    routine << Exercise.where(difficulty: 3).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'legs'}
    end.sample

    routine << Exercise.where(difficulty: 2).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'legs'}
    end.sample

    routine << Exercise.where(difficulty: 1).select do |d|
      d.muscle_groups.any?{|mg| mg.name == 'legs'}
    end.sample(2)

    routine
  end
end
