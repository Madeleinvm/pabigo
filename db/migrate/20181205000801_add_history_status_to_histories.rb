class AddHistoryStatusToHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :history_status, :string
  end
end
