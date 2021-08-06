class Ask < ApplicationRecord

  # El atributo campo como el answer tiene limite de longitud inferior y superior
    # Los 3 campos answer, campo y tipo no deben estar validaciones
    # el tipo es perros o gatos


  validates :answer, presence:  {message:  "Querido Dr. el mensaje no puede ser vacio."}

  validates :answer, length: { minimum: 10, :message => "Querido Dr. la respuesta no puede contener menos de 10 caracteres."}

  validates :answer, length: { maximum: 5000, :message => "Querido Dr. la respuesta no puede contener mas de 5000 caracteres."}

  validates :campo, presence:  {message:  "Estimado usuario, el mensaje no puede ser vacio."}
  validates :campo,  length: { minimum: 10, :message => "Estimado usuario, la pregunta no puede contener menos de 10 caracteres."}

  validates :campo, length: { maximum: 5000, :message => "Estimado usuario, la pregunta no puede contener mas de 5000 caracteres."}

  validates :tipo, presence:  {message:  "Estimado usuario, debe seleccionar entre perros y gatos."}

  belongs_to :user, optional: true

  def to_s
    updated_at.to_time.strftime('%d/%m/%Y | %l:%m %P')
  end


end
