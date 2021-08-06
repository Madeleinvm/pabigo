class AddUserRefToWalkers < ActiveRecord::Migration[5.2]
  def change
    add_reference :walkers, :user, foreign_key: true
    add_column :walkers, :status, :string
    add_column :walkers, :description, :string
  end
end
