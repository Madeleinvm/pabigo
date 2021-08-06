class User < ApplicationRecord
  attr_accessor :skip_password_validation
  before_create :set_privacy
  # before_create :create_profile
  acts_as_token_authenticatable
  
  has_many :asks, dependent: :destroy
  has_many :user_roles, dependent: :destroy
  has_many :roles, through: :user_roles
  has_many :phones, as: :phoneable, dependent: :destroy
  has_many :adoptions, foreign_key: "users_id"
  has_many :adopts, class_name: "Adoption", foreign_key: "adopter_id"
  has_many :histories
  has_one :trainer_detail, dependent: :destroy
  has_one :walker, autosave: true
  accepts_nested_attributes_for :phones, allow_destroy: true
  has_many :ads, dependent: :destroy
  has_many :feedbacks

  has_one :profile, dependent: :destroy, autosave: true
  accepts_nested_attributes_for :profile
  has_one :address, as: :addressable, dependent: :destroy
  has_one :privacy, dependent: :destroy
  has_one :temporal_home, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable

  EMAIL_FORMAT = /\A(?!.*\.\.)[a-z\d_.\-+]{1,50}@[a-z\d\-]{1,50}\.[a-z]{1,30}\z/i
  PASSWORD_FORMAT = /\A(?=.*[A-Z])(?=.*\d)(?=.*(?:!|#|\$|%|&|\/|\(|\)|=|\?|\*|\.)).{8,32}\z/

  validates_format_of :email, with: EMAIL_FORMAT
  # validates_format_of :password, with: PASSWORD_FORMAT, unless: :skip_password_validation

  def has_role?(role_name)
    roles.any? {|role| role.name == role_name.capitalize}
  end

  def is_admin?
    has_role?("Admin")
  end

  def reset_authentication_token!
    update_column(:authentication_token, Devise.friendly_token)
  end

  def set_privacy
    privacy = build_privacy
    privacy.show_full_name = true
    privacy.show_email = true
    privacy.show_phones = true
    privacy.show_address = true
    privacy.show_profile_picture = true
  end

  def create_profile
    build_profile.save!
  end
end
