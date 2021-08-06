class PhoneType < ApplicationRecord
  has_many :phones

  NAMES = ['Casa', 'Celular', 'Trabajo', 'Otro']
end
