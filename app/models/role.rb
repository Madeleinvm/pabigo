class Role < ApplicationRecord
  has_many :user_roles, dependent: :destroy
  has_many :users, through: :user_roles

  has_many :role_permissions, dependent: :destroy
  has_many :permissions, through: :role_permissions
  
  ADMIN = 'Admin'
  PROTECTOR = 'Protector'
  TEMPORARY_CARER = 'Cuidador Temporal'
  TRAINER = 'Entrenador'
  WALKER = 'Paseador'
  VETERINARY = 'Veterinario'
  GODFATHER = 'Padrino'
  PENSION = 'Pensión'

  ROLES = [
    ADMIN,
    PROTECTOR,
    TEMPORARY_CARER,
    TRAINER,
    WALKER,
    VETERINARY,
    GODFATHER,
    PENSION
  ]
end
