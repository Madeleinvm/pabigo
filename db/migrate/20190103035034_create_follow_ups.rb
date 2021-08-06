class CreateFollowUps < ActiveRecord::Migration[5.2]
  def change
    create_table :follow_ups do |t|
      t.text :description
      t.references :adoption, foreign_key: true

      t.timestamps
    end
  end
end
