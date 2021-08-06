class Product < ApplicationRecord
  belongs_to :user, required: false
      has_many :images, as: :imageable, dependent: :destroy do
		def length
		  reject(&:marked_for_destruction?).length
    end
  end

  accepts_nested_attributes_for :images, allow_destroy: true

  validates :name,
        presence: {message: "Se debe ingresar el nombre del producto."}, on: :create
  validates :description,
        presence: {message: "Se debe ingresar la descripcion del producto"}, on: :create
  validates :address,
        presence: {message: "Se debe ingresar la direccion para el retiro del producto"}, on: :create
  validates :address,
        presence: {message: "Se debe ingresar el numero de telefono de contacto"}, on: :create

  NUMBER_FORMAT = /\A^[0-9]+$\z/
  validates_format_of :qty, :phone_number, {with:NUMBER_FORMAT, message: "El campo solamente puede tener numeros "}



      def self.search(search)
	  if search
              where("product_type LIKE ?", "%#{search}%")
        else
	    find(:all)
	  end
	end
 end
