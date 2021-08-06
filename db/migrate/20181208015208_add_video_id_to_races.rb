class AddVideoIdToRaces < ActiveRecord::Migration[5.2]
  def change
  	add_column :races, :video_id, :integer
    add_index  :races, :video_id
  end
end
