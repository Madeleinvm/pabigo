puts "Paseadores"
walker1 = Walker.create({
   role_id: 5,
   start_time: "8",
   end_time: "10",
   day: "Miércoles",
   city: "Caracas",
   date_of_birth: "1995-01-19T03:14:07.000Z",
   calification: 0.0,
   user_id: 2,
   status: "Aprobado",
   description: "Tengo 5 años de experiencia paseando perros de cualquier tamaño.",
   images_attributes: [{
      picture: File.open('public/images/walker1.jpg'),
      name: "Caminador 1"
    }]
})
walker1.save!

walker2 = Walker.create({
   role_id: 5,
   start_time: "7",
   end_time: "9",
   day: "Jueves",
   city: "Coro",
   date_of_birth: "1995-01-19T03:14:07.000Z",
   calification: 0.0,
   user_id: 3,
   status: "Aprobado",
   description: "Tengo 6 años de experiencia paseando perros de cualquier tamaño.",
   images_attributes: [{
      picture: File.open('public/images/walker2.jpg'),
      name: "Caminador 2"
    }]
})
walker2.save!

walker3 = Walker.create({
   role_id: 5,
   start_time: "9",
   end_time: "12",
   day: "Lunes",
   city: "Caracas",
   date_of_birth: "1995-01-19T03:14:07.000Z",
   calification: 0.0,
   user_id: 4,
   status: "Aprobado",
   description: "Tengo 10 años de experiencia paseando perros de cualquier tamaño.",
   images_attributes: [{
      picture: File.open('public/images/walker3.jpg'),
      name: "Caminador 3"
    }]
})
walker3.save!

walker4 = Walker.create({
   role_id: 5,
   start_time: "12",
   end_time: "13",
   day: "Domingos",
   city: "Caracas",
   date_of_birth: "1995-01-19T03:14:07.000Z",
   calification: 0.0,
   user_id: 5,
   status: "Aprobado",
   description: "Tengo 10 años de experiencia paseando perros de cualquier tamaño.",
   images_attributes: [{
      picture: File.open('public/images/walker4.jpg'),
      name: "Caminador 4"
    }]
})
walker4.save!