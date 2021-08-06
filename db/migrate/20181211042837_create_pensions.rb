class CreatePensions < ActiveRecord::Migration[5.2]
  def change
    create_table :pensions do |t|
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
