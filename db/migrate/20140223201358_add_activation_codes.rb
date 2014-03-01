class AddActivationCodes < ActiveRecord::Migration
  def up
    create_table :activation_codes do |t|
      t.string :code, null: false
      t.boolean :activated, :default => false
      t.integer :lure_id, null: false
      t.timestamps
    end
  end

  def down
    drop_table :activiation_codes
  end
end
