class CreateTrainerDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :trainer_details do |t|
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
