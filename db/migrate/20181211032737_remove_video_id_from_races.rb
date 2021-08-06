class RemoveVideoIdFromRaces < ActiveRecord::Migration[5.2]
  def change
    remove_index :races, :video_id
  end
end
