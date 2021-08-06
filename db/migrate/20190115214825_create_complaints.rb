class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.string :abusive_name
      t.references :institution, foreign_key: true
      t.text :description
      t.string :place

      t.timestamps
    end
  end
end
