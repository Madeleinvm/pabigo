class CreateRacePersonalities < ActiveRecord::Migration[5.2]
  def change
    create_table :race_personalities do |t|
      t.integer :affectivity
      t.integer :docility
      t.integer :bustling
      t.integer :playful
      t.integer :grooming
      t.integer :hair_losener
      t.integer :kids

      t.timestamps
    end
  end
end
