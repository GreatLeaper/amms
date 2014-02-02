class AddVideoUrlToLureTypes < ActiveRecord::Migration
  def change
    add_column :lure_types, :video_url, :string
  end
end
