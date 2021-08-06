class AddDetailsToRaces < ActiveRecord::Migration[5.2]
  def change
    add_column :races, :height, :float
    add_column :races, :weight, :float
    add_column :races, :fur, :string
    add_column :races, :physical_details, :string
    add_column :races, :character, :string
    add_column :races, :care, :string
    add_column :races, :health, :string
    add_column :races, :story, :string
    add_column :races, :color, :string
    add_column :races, :affectivity, :integer
    add_column :races, :docility, :integer
    add_column :races, :bustling, :integer
    add_column :races, :playful, :integer
    add_column :races, :grooming, :integer
    add_column :races, :hair_loosner, :integer
    add_column :races, :kids, :integer
  end
end
