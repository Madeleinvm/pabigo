class Race < ApplicationRecord
    has_many :pets
    has_one :image, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :image, allow_destroy: true
    validates_presence_of :name
    
    validates :name, presence: {message: 'El nombre no debe estar vacio'},
                     format: {with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, message: "El nombre solo puede tener letras"},
                     length: {minimum: 3, :message => "El nombre debe tener minimo 3 caracteres "},
                     uniqueness: {message: "Ya existe una raza con ese nombre"}

    validates :height, presence: {message: 'El tamaño no debe estar vacio'},
                     format: {with: /(0*[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*)/, message: "El tamaño solo puede tener números mayores a cero"}

    validates :weight, presence: {message: 'El peso no debe estar vacio'},
                     format: {with: /(0*[1-9][0-9]*(\.[0-9]+)?|0+\.[0-9]*[1-9][0-9]*)/, message: "El peso solo puede tener números mayores a cero"}

    validates :fur, presence: {message: 'El pelaje no debe estar vacio'},
                     length: {in: 4..100, too_long: "El pelaje debe tener maximo 100 caracteres", too_short: "El pelaje debe tener minimo 4 caracteres"}

    validates :physical_details, presence: {message: 'La descripción física no debe estar vacia'},
                     length: {in: 4..100, too_long: "La descripción física debe tener maximo 100 caracteres", too_short: "La descripción física debe tener minimo 4 caracteres"}

    validates :character, presence: {message: 'El carácter no debe estar vacio'},
                     length: {minimum: 4, :message => "El carácter debe tener minimo 4 caracteres"}

    validates :care, presence: {message: 'El cuidado no debe estar vacio'},
                     length: {minimum: 4, :message => "El cuidado debe tener minimo 4 caracteres"}

    validates :health, presence: {message: 'La salud no debe estar vacia'},
                     length: {minimum: 4, :message => "El carácter debe tener minimo 4 caracteres"}

    validates :story, presence: {message: 'La historia no debe estar vacia'},
                     length: {minimum: 4, :message => "La historia debe tener minimo 4 caracteres"}

    validates :color, presence: {message: 'El color no debe estar vacio'},
                     length: {in: 4..100, too_long: "El color debe tener maximo 100 caracteres", too_short: "El color debe tener minimo 4 caracteres"}

    validates :affectivity, presence: {message: 'El campo "Afectividad" no debe estar vacio'}
    validates :docility, presence: {message: 'El campo "Docilidad" no debe estar vacio'}
    validates :bustling, presence: {message: 'El campo "Activo" no debe estar vacio'}
    validates :playful, presence: {message: 'El campo "Juguetón" no debe estar vacio'}
    validates :grooming, presence: {message: 'El campo "Higiene" no debe estar vacio'}
    validates :hair_loosner, presence: {message: 'El campo "Suelta pelaje" no debe estar vacio'}
    validates :kids, presence: {message: 'El campo "Trato con los niños" no debe estar vacio'}
    validates :species, presence: {message: 'El campo "Tipo de animal" no debe estar vacio'}
    validates :image, presence: { message: 'Debe tener una imagen' }

    end
