class Request < ApplicationRecord

  # En una solicitud se debe mostrar para quien va dirigida la misma
  # Le da mas credibilidad a la persona quien hace el pedido
  has_many :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  # Relacion 1 a mucho con la tabla de Usuarios
  belongs_to :user, optional: true

  # Validaciones
  # Direccion
  validates :direccion, presence:  {message:  "Querido Usuario, la dirección de su solicitud debe existir."}
  validates :direccion, length: { minimum: 10, :message => "Querido Usuario, su dirección debe contener más de 10 carácteres."}
  validates :direccion, length: { maximum: 5000, :message => "Lo siento, su direccion debe ser menor a 5000 caracteres."}
  # Descripcion
  validates :descripcion, presence:  {message:  "Querido Solicitante, la descripción de su pedido debe existir."}
  validates :descripcion, length: { minimum: 10, :message => "Querido Usuario, su descripcion debe contener más de 10 carácteres."}
  validates :descripcion, length: { maximum: 5000, :message => "Lo siento, su descripcion debe ser menor a 5000 caracteres."}

  # validates :tipo, presence:  {message:  "Estimado usuario, debe seleccionar alguna opcion."}

  def to_s
    updated_at.to_time.strftime('%d/%m/%Y | %l:%m %P')
  end
  
end
