class AddUserRefToAds < ActiveRecord::Migration[5.2]
  def change
    add_reference :ads, :user, foreign_key: true
  end
end
