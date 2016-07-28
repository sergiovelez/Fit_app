class CreateRoutines < ActiveRecord::Migration[5.0]
  def change
    create_table :routines do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
