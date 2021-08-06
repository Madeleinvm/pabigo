class Category < ApplicationRecord
  has_many :tipes, :dependent => :destroy
end
