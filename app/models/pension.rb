class Pension < ApplicationRecord
    has_many :images, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :images, allow_destroy: true
    #belongs_to :user
    has_many :feedbacks
end




