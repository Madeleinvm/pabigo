class TrainerDetail < ApplicationRecord
    has_many :images, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :images, allow_destroy: true
    has_many :feedbacks

end
