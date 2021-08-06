class Feedback < ApplicationRecord
    belongs_to :trainer_details, required:false
    belongs_to :walker, required:false
    belongs_to :pension, required:false
    belongs_to :user

    validates :points, presence: {message: 'La puntuación no debe estar vacia'}
end
