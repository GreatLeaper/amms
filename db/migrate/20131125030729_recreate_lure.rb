class RecreateLure < ActiveRecord::Migration
  def up
    drop_table :lures

    create_table :lures do |t|
      t.string  :code, :null => false
      t.integer :lure_type_id, :null => false
      t.integer :color_id
      t.boolean :active, default: false
      t.string  :image
      t.timestamps
    end

    add_index :lures, :code, :unique => true

  end

  def down
    drop_table :lures

    create_table :lures do |t|
      t.string  :name, :null => false
      t.integer :weight
      t.integer :depth
      t.integer :bill_id
      t.integer :color_id
      t.timestamps
    end
  end
end
