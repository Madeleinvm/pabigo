class Address < ApplicationRecord
  belongs_to :city
  belongs_to :addressable, polymorphic: true
	# belongs_to :institution
	# validates_presence_of :city
	# accepts_nested_attributes_for :city

	
	validates :line1, length: { in: 5..30 }	
	validates :line2, length: { in: 5..30 }	
	validates :zip_code, length: { is: 4 }	
end
