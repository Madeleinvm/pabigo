class AddUserIdToPensions < ActiveRecord::Migration[5.2]
  def change
    add_reference :pensions, :user, foreign_key: true
  end
end
