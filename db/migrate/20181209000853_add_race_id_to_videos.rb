class AddRaceIdToVideos < ActiveRecord::Migration[5.2]
  def change
  	add_column :videos, :race_id, :integer
    add_index  :videos, :race_id
  end
end
