class AddBancoToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :banco, :string
  end
end
