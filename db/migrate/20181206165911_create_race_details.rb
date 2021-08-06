class CreateRaceDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :race_details do |t|
      t.float :height
      t.float :weight
      t.string :fur
      t.string :physical_details
      t.string :character
      t.string :care
      t.string :health
      t.string :story
      t.string :color

      t.timestamps
    end
  end
end
