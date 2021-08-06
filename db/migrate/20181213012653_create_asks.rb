class CreateAsks < ActiveRecord::Migration[5.2]
  def change
    create_table :asks do |t|
      t.text :campo
      t.text :answer
      t.string :tipo
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
