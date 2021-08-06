class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
      t.string :email
      t.string :web
      t.timestamps
    end
  end
end