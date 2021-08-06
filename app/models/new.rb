class New < ApplicationRecord
  belongs_to :user
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true
  
  
  def self.search(search, id)
    if search
      where(news.arel_table[:title]
      .lower
      .matches("%#{search.downcase}%"))
    end
   end

   
   validates :title, presence: { message: 'El titulo no puede estar vacio' }
   validates :image, presence: { message: 'Debe tener una imagen' }
   validates :content1, presence: { message: 'El primer contenido no puede estar vacio' }
   validates :title, length: { in: 2..40 }
  #validates_format_of :title, with:TITLE_FORMAT, acceptance: { message: 
  #'No debe ser menor de 10 y mayor de 80' }
  #validates_format_of :content1, with:CONTENT1_FORMAT, acceptance: { message: 
  #'No debe ser menor de 200 y mayor de 1200' }
  #validates_format_of :content2, with:CONTENT2_FORMAT, acceptance: { message: 
  #'No debe ser menor de 200 y mayor de 1200' }
end
