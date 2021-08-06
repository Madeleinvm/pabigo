class ChangeCalificationToBeFloatInWalkers < ActiveRecord::Migration[5.2]
  def change
    change_column :walkers, :calification, :float
  end
end
