class CreateWalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :walkers do |t|
      t.bigint :role_id
      t.string :start_time
      t.string :end_time
      t.string :day
      t.string :city
      t.datetime :date_of_birth
      t.integer :calification

      t.timestamps
    end
  end
end
