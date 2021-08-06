class SubCat < ApplicationRecord
  # belongs_to :subscriber , class_name: "Subscriber" , foreign_key:subscriber_id
  # belongs_to :category , class_name: "Category", foreign_key:category_id

  #validacion para el campo siscriptor
  # validates :subscriber_id, presence: { :message => "Debe colocar un suscriptor valido"}
    
  #validacion para el campo categoria
  # validates :category_id, presence: { :message => "Debe colocar una categoria valida"}
end