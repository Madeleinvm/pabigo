class CreateSubCats < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_cats do |t|
      t.integer :subscriber_id
      t.integer :category_id

      t.timestamps
    end
  end
end
