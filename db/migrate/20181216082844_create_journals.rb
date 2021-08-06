class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|

      t.string :tipe_journal
      t.string :place_journal
      t.time :time_journal
      t.date :date_journal
      t.string :description_journal

      t.timestamps
    end
  end
end
