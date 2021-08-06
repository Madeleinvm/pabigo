class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :email, null: false
      t.string :period, null: false

      t.timestamps null:false
    end
    add_index :subscriptions, :email, unique:true
    add_index :subscriptions, :period
  end
end
