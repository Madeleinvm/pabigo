class CreatePrivacies < ActiveRecord::Migration[5.2]
  def change
    create_table :privacies do |t|
      t.boolean :show_full_name, default: true
      t.boolean :show_email, default: true
      t.boolean :show_profile_picture, default: true
      t.boolean :show_phones, default: true
      t.boolean :show_address, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
