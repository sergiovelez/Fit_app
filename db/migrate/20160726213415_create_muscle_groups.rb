class CreateMuscleGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :muscle_groups do |t|
      t.string :name
      t.integer :muscle_size

      t.timestamps
    end
  end
end
