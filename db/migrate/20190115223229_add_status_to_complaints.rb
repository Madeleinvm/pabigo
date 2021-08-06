class AddStatusToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :approved, :boolean
  end
end
