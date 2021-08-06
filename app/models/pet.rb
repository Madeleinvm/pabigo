class Pet < ApplicationRecord
  has_many :adoptions
  belongs_to :race, required: false
  has_many :images, as: :imageable, dependent: :destroy do
		def length
		  reject(&:marked_for_destruction?).length
    end
  end
  has_many :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates_presence_of :name,:weight, :description, :races_id, :aprox_age, :species

end
