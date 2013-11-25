class CreateLureTypes < ActiveRecord::Migration
  def up
    create_table :lure_types do |t|
      t.string :name, null: false
      t.decimal :length
      t.decimal :weight
      t.integer :depth
      t.integer :bill_id
      t.integer :hook_id
      t.integer :color_id
      t.string  :image
      t.timestamps
    end
  end

  def down
    drop_table :lure_types
  end
end
