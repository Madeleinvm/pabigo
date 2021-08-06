class Permission < ApplicationRecord
  has_many :role_permissions, dependent: :destroy
  has_many :roles, through: :role_permissions

  MANAGEMENT = "Gestión de "
  MODELS = [
    "Usuarios",     # 0
    "Noticias",     # 1
    "Publicidad",   # 2
    "Solicitudes",  # 3
    "Historias",    # 4
    "Reflexiones",  # 5
    "Categorías",   # 6
    "Razas",        # 7
    "Donaciones",   # 8
    "Roles"         # 9
  ]

  permissions = []

  MODELS.each do |model|
    permissions << MANAGEMENT + model
  end

  PERMISSIONS = permissions
end
