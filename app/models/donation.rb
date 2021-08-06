class Donation < ApplicationRecord

    belongs_to :user

    has_many :images, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :images, allow_destroy: true


    validates :name, :presence => {:message => "Debe ingresar un nombre"}
    validates :dontype, :presence => {:message => "Seleccione un tipo de donación "}
    validates :benefited, :presence => {:message => "Seleccione un beneficiado "}
    validates :description, :presence => {:message => "La descripción no puede estar vacía"}
    validates :quantity, :presence => {:message => "Ingrese la catidad de productos o cantidad monetaria"}
    validates :description, length: { in: 5..1500,
        too_long: " Puede escribir hasta 1500 caracteres ",
        too_short: " Debe escribir mínimo 5 caracteres" }
    validates :name, length: { maximum: 30, :message => "El nombre no puede tener mas de 30 caracteres"}
    validates :quantity, length: { maximum: 50, :message => "La cantidad no puede tener mas de 50 caracteres"}
    validates :shipping, :presence => {:message => "Debe ingresar la dirección o el número de cuenta"}


    validates :shipping, length: { in: 5..1500,
        too_long: " Puede escribir hasta 1500 caracteres ",
        too_short: " Debe escribir mínimo 5 caracteres" }
end
