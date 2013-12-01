class AddDescriptionToLureTypes < ActiveRecord::Migration
  def change
    add_column :lure_types, :description, :text
  end
end
