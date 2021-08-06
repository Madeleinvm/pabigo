class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :name
      t.text :description
      t.string :benefited
      t.integer :quantity

      t.timestamps
    end
  end
end
