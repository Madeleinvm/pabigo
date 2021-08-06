class History < ApplicationRecord
	belongs_to :user, optional: true
	
    has_many :images, as: :imageable, dependent: :destroy do
		def length
		  reject(&:marked_for_destruction?).length
		end
	end

	accepts_nested_attributes_for :images, allow_destroy: true

	validates :title, presence: { message: 'El título no puede estar vacío' }
    validates :description, presence: { message: 'La descripción no puede estar vacía' }
    validates :title, length: { in: 5..75,
	   too_long: " 50 caracteres es lo maximo permitido",
	   too_short: " 5 caracteres es lo minimo permitido" }
    validates :description, length: { in: 5..2000,
	   too_long: " 1500 caracteres es lo máximo permitido",
	   too_short: " 5 caracteres es lo minimo permitido" }
    
	def self.search(search)
	  if search
	  	where("title LIKE ?", "%#{search}%")
	  elsif search2
	  	where("created_at LIKE ?", "%#{search}%")
	  else
	    find(:all)
	  end
	end


end
