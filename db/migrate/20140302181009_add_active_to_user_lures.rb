class AddActiveToUserLures < ActiveRecord::Migration
  def change
    add_column :user_lures, :active, :boolean, default: true
  end
end
