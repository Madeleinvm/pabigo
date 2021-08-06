class AlterPetsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :pets, :aprox_age, :integer
  	add_column :pets, :dewormed, :boolean
  	add_column :pets, :neutered, :boolean
  	add_column :pets, :species, :string
  	add_column :pets, :weight, :integer 
  	add_column :pets, :special_needs, :boolean
  	add_column :pets, :description, :text
  end
end
