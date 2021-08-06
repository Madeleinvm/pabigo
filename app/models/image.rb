class Image < ApplicationRecord
  attr_accessor :validate_picture
  
  belongs_to :imageable, polymorphic: true, optional: true
  mount_uploader :picture, PictureUploader

  validates :picture, presence: true, if: :validate_picture?

  def validate_picture?
    validate_picture == 'true' || validate_picture == true
  end
end