class AddUserIdToTrainerDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :trainer_details, :user, foreign_key: true
  end
end
