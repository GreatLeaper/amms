class AddSomeIndexes < ActiveRecord::Migration
  def up
    add_index :hooks, [:type, :size]
    add_index :lure_hooks, [:lure_id]
    add_index :lure_hooks, [:hook_id]
  end

  def down
  end
end
