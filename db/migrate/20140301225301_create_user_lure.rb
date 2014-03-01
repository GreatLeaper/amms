class CreateUserLure < ActiveRecord::Migration
  def up
    create_table :user_lures do |t|
      t.integer :user_id, null: false
      t.integer :lure_id, null: false
      t.string :activation_code
      t.timestamps
    end
  end

  def down
    drop_table :user_lures
  end
end
