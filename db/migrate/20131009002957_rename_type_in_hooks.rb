class RenameTypeInHooks < ActiveRecord::Migration
  def up
    rename_column :hooks, :type, :hook_type
  end

  def down
    rename_column :hooks, :hook_type, :type
  end
end
