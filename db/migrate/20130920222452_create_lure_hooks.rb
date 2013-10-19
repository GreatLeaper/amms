class CreateLureHooks < ActiveRecord::Migration
  def up
    create_table :lure_hooks do |t|
      t.integer :lure_id
      t.integer :hook_id
    end
  end

  def down
    drop_table :lure_hooks
  end
end
