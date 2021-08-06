class SubscriptionCategories < ApplicationRecord
  belongs_to :subscription,  class_name: "Subscription", foreign_key: :subscription_id
  belongs_to :category, class_name: "Category", foreign_key: :category_id
end
