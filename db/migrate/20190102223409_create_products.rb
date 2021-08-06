class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :product_type
      t.bigint :qty
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
