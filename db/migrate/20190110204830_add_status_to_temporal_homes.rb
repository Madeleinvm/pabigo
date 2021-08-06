class AddStatusToTemporalHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :temporal_homes, :approved, :boolean
  end
end
