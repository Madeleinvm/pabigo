class CreateAdoptions < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptions do |t|
      t.datetime :adoption_date
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
