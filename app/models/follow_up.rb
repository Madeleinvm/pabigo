class FollowUp < ApplicationRecord
  
  #belongs_to :adoption

  has_many :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  #belongs_to :adoption




  delegate :users_id, to: :adoptions, prefix: true, allow_nil: true
  delegate :email, to: :user, prefix: true, allow_nil: true
  
  validates :description, :presence => {:message => "La descripción no puede estar vacía"}
  validates :description, length: { in: 5..1500,
    too_long: " Puede escribir hasta 1500 caracteres ",
    too_short: " Debe escribir mínimo 5 caracteres" }

end
