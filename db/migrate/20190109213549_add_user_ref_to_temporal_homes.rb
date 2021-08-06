class AddUserRefToTemporalHomes < ActiveRecord::Migration[5.2]
  def change
    add_reference :temporal_homes, :user, foreign_key: true
  end
end
