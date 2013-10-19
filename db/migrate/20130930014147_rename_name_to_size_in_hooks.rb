class RenameNameToSizeInHooks < ActiveRecord::Migration
  def up
    rename_column :hooks, :name, :size
  end

  def down
    rename_column :hooks, :size, :name
  end
end
