class Walker < ApplicationRecord
	belongs_to :role
	belongs_to :user
	has_many :feedbacks
	has_many :images, as: :imageable, dependent: :destroy
  	accepts_nested_attributes_for :images, allow_destroy: true
	
    validates :city, presence: { message: 'La ciudad no puede estar vacia' }
end
