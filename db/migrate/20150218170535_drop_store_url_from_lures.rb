class DropStoreUrlFromLures < ActiveRecord::Migration
  def up
    remove_column :lures, :store_url
  end

  def down
    add_column :lures, :store_url, :string
  end
end
