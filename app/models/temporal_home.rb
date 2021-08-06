class TemporalHome < ApplicationRecord
  belongs_to :user
  
  validates_presence_of :dog, :pet_characteristics,
                        :home_type,
                        :existing_pets,
                        :protection_duration,
                        :reference_phone

  validates :id_card, :reference_id_card, { length: { minimum: 3, maximum: 10 } }
  validates :kind_of_help, :reference_full_name, :kind_of_help, { length: { minimum: 2, maximum: 255 } }
end
