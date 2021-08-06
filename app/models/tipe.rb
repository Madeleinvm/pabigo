class Tipe < ApplicationRecord
  belongs_to :category

  validates :name,
        presence: {message: "Debe ingresar el nombre del tip"}, on: :create

  validates :description,
        presence: {message: "Debe ingresar la descripcion del tip"}, on: :create
end
