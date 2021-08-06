class CreateSubscriptionCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :subscription_categories do |t|
    	t.references :subscription, foreign_key: true
    	t.references :category, foreign_key: true

    	t.timestamps
    end
  end
end
