class Institution < ActiveRecord::Base
  has_many :complaints, dependent: :destroy

  EMAIL_FORMAT = /\A(?!.*\.\.)[a-z\d_.\-+]{1,50}@[a-z\d\-]{1,50}\.[a-z]{1,30}\z/i
  validates_format_of :email, with: EMAIL_FORMAT

  WEB_FORMAT = /\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]\.[a-z]{1,30}\z/i
  validates_format_of :web, with: WEB_FORMAT

  validates :name,
        presence: {message: "Debe ingresar el nombre de la institución"}, on: :create


        validates :address,
              presence: {message: "Debe ingresar la direccion de la institución"}, on: :create

end
