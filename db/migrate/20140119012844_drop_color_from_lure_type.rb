class DropColorFromLureType < ActiveRecord::Migration
  def up
    remove_column :lure_types, :color_id
  end

  def down
    add_column :lure_types, :color_id, :integer
  end
end
