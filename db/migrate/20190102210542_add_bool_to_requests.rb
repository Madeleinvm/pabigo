class AddBoolToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :bool, :string
  end
end
