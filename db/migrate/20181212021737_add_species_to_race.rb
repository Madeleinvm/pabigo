class AddSpeciesToRace < ActiveRecord::Migration[5.2]
  def change
    add_column :races, :species, :string
  end
end
