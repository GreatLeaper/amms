class AddImageToLures < ActiveRecord::Migration
  def change
    add_column :lures, :image, :string
  end
end
