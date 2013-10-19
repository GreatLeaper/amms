class CreateLure < ActiveRecord::Migration
  def up
    create_table :lures do |t|
      t.string  :name, :null => false
      t.integer :weight
      t.integer :depth
      t.integer :bill_id
      t.integer :color_id
      t.timestamps
    end

  end

  def down
    drop_table :lures
  end
end
