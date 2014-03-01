class AddCodeIndex < ActiveRecord::Migration
  def change
    add_index :activation_codes, :code
  end
end
