class CreateColor < ActiveRecord::Migration
  def up
    create_table :colors do |t|
      t.string :name, null: false
      t.timestamps
    end
  end

  def down
    drop_table :colors
  end
end
