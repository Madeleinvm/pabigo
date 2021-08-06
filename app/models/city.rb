class City < ApplicationRecord
  belongs_to :state
  has_many :addresses
	# accepts_nested_attributes_for :addresses
	# accepts_nested_attributes_for :state
end
