class CreateBills < ActiveRecord::Migration
  def up
    create_table :bills do |t|
      t.string :material, null: false
      t.timestamps
    end
  end

  def down
    drop_table :bills
  end
end
