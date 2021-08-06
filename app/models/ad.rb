    class Ad < ApplicationRecord
        belongs_to :user
        validates :title, :presence => {:message => "Debe colocar el titulo de la publicidad"}
        validates :descripcion, :presence => {:message => "La descripcion debe estar presente"}
        
        has_one :image, as: :imageable, dependent: :destroy
        accepts_nested_attributes_for :image, allow_destroy: true
            
    end
