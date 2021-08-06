class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title,   null: false, default: ""
      t.string :descripcion,   null: false, default: ""
      
      add_index :users, :id
      #Ex:- add_index("admin_users", "username")
    end
  end
end
