class AddHistoryIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :history, foreign_key: true
  end
end
