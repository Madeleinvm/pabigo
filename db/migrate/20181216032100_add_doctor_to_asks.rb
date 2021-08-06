class AddDoctorToAsks < ActiveRecord::Migration[5.2]
  def change
    add_column :asks, :doctor, :string
  end
end
