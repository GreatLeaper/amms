class DropLureHooks < ActiveRecord::Migration
  def up
    drop_table :lure_hooks
  end

  def down
    create_table :lure_hooks do |t|
      t.integer :lure_id
      t.integer :hook_id
    end
  end
end
