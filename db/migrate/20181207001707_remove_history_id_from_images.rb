class RemoveHistoryIdFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :images, :history, foreign_key: true
  end
end
