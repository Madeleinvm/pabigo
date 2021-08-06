class Complaint < ApplicationRecord
  belongs_to :institution, optional: true

  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  validates :abusive_name, length: { minimum: 2, maximum: 255 }, allow_blank: true
  validates :description, length: { minimum: 10 }
  validates :place, length: { minimum: 2, maximum: 255 }
end
