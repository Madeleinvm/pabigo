class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :points
      t.string :comment
      t.references :trainer
      t.references :walker
      t.references :user
      t.references :pension

      t.timestamps
    end
  end
end
