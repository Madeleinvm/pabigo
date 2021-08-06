json.journals @journals do |journal|
	json.id journal.id
	json.tipe_journal journal.tipe_journal
	json.place_journal journal.place_journal
	json.time_journal journal.time_journal
	json.date_journal journal.date_journal
	json.description_journal journal.description_journal
end
