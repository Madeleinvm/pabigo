class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :period

      t.timestamps
    end
    add_index :subscribers, :email, unique: true
  end
end
