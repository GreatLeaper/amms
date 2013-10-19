class CreateHook < ActiveRecord::Migration
  def up
    create_table :hooks do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.timestamps
    end
  end

  def down
    drop_table :hooks
  end
end
