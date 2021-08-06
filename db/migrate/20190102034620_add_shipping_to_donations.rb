class AddShippingToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :shipping, :string
  end
end
