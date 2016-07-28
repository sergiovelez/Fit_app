class CreateJoinTableUserEquipment < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :equipment do |t|
      # t.index [:user_id, :equipment_id]
      # t.index [:equipment_id, :user_id]
    end
  end
end
