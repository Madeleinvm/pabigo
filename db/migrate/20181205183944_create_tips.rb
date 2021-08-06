class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :name
      t.string :description
      t.references :tip_types, foreign_key: true

      t.timestamps
    end
  end
end
