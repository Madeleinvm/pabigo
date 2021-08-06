class AddRaceIdToRaceDetails < ActiveRecord::Migration[5.2]
  def change
  	add_column :race_details, :race_id, :integer
    add_index  :race_details, :race_id
  end
end
