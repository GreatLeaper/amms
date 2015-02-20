class AddPaypalButtonIdToLures < ActiveRecord::Migration
  def change
    add_column :lures, :paypal_button_id, :string
  end
end
