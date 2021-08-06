u = Journal.create!([{
tipe_journal: "Jornada de Vacunacion",
place_journal: "Caracas",
time_journal: "04:05 PM",
date_journal: "19/12/2018",
description_journal: "Jornada de vacunacion gratis para todas las mascotas"
}
])

p "Created #{Journal.count} journals"