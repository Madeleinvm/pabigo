class AddMoreDataToPensions < ActiveRecord::Migration[5.2]
  def change
    add_column :pensions, :nombre, :string
    add_column :pensions, :red_social, :string
    add_column :pensions, :correo, :string
  end
end
