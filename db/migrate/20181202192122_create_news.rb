class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.string :content1
      t.string :content2
      t.integer :visits, null:false
      t.references :user, foreign_key: true
      t.references :image, foreign_key: true
      t.timestamps null:false
    end
  end
end
