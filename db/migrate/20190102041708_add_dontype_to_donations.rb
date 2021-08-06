class AddDontypeToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :dontype, :string
  end
end
