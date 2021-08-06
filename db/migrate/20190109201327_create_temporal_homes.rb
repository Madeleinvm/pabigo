class CreateTemporalHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :temporal_homes do |t|
      t.string :id_card
      t.boolean :dog
      t.text :pet_characteristics
      t.string :home_type
      t.text :existing_pets
      t.string :kind_of_help
      t.date :protection_duration
      t.string :reference_full_name
      t.string :reference_phone
      t.string :reference_id_card

      t.timestamps
    end
  end
end
