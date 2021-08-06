class Profile < ApplicationRecord
  belongs_to :user

  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  NAME_FORMAT = /\A\b[A-ZÁ-ÚÑa-zá-úñ]{2,30}\b\z/
  LAST_NAME_FORMAT = /\A(?!.*\.\.)(?!.*\s\s)(?!.*'')(?!.*\s\.)(?!.*\.$)[a-zá-úñA-ZÁ-ÚÑ.' ]{2,63}\z/

  # validates_presence_of :name, :last_name
  # validates :name, length: { in: 3..20 }
  # validates :last_name, length: { in: 2..20 }
  validates :male, inclusion: {in: [true, false]}
  validates_format_of :name, with: LAST_NAME_FORMAT
  validates_format_of :last_name, with: LAST_NAME_FORMAT

  def full_name
    "#{name} #{last_name}" if name && last_name
  end
end
