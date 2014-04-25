class AddStoreUrlToLures < ActiveRecord::Migration
  def change
    add_column :lures, :store_url, :string
  end
end
