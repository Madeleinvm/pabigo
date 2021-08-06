class Adoption < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :adopter, optional: true, class_name: "User"
  belongs_to :pet, required: false
end
