class AgregarContactoProducto < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :phone_number, :integer
  end
end
