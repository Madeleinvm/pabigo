class Tip < ApplicationRecord
  belongs_to :tip_type, required: false
end
