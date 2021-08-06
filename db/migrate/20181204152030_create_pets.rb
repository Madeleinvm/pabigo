class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :adoptions, foreign_key: true
      t.references :races, foreign_key: true

      t.timestamps
    end
  end
end
