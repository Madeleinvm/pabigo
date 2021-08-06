class Phone < ApplicationRecord
  belongs_to :phone_type
  belongs_to :phoneable, polymorphic: true

  
  #validates :number, format: { with: /\D/, message: "Solo se permiten numeros" } 
  validates :number, numericality: true
  validates :number, numericality: { only_integer: true } 
  validates :number, length: { is: 11 }	
end
