class AddRaceIdToRacePersonalities < ActiveRecord::Migration[5.2]
  def change
  	add_column :race_personalities, :race_id, :integer
    add_index  :race_personalities, :race_id
  end
end
