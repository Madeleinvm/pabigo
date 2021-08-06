class Journal < ApplicationRecord

	validates :tipe_journal, presence: true 
	validates :place_journal  , presence: true
	validates :time_journal , presence: true
	validates :date_journal  , presence: true
	validates :description_journal, presence: true

end
