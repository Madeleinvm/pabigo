puts "Entrenadores"
trainer_detail1 = TrainerDetail.create({
   description: "Se entrenan perros de razas grandes, a partir del año de edad",
   status: "Aprobado",
   user_id: 15, 
   qualification: 0.0,
   images_attributes: [{
      picture: File.open('public/images/entrenador1.jpg'),
      name: "Entrenador1"
    }]
})
trainer_detail1.save!

trainer_detail2 = TrainerDetail.create({
   description: "Se entrenan perros de razas pequeñas, para el cuidado de bebes",
   status: "Aprobado", 
   user_id: 14, 
   qualification: 0.0,
   images_attributes: [{
      picture: File.open('public/images/entrenador2.jpg'),
      name: "Entrenador2"
    }]
})
trainer_detail2.save!

trainer_detail3 = TrainerDetail.create({
   description: "Se entrenan perros y gatos de todas las razas y edades",
   status: "Aprobado", 
   user_id: 13, 
   qualification: 0.0,
   images_attributes: [{
      picture: File.open('public/images/entrenador41.jpg'),
      name: "Entrenador3"
    }]
})
trainer_detail3.save!

trainer_detail4 = TrainerDetail.create({
   description: "Se entrenan perros de razas grandes, a partir del año de edad",
   status: "Aprobado",
   user_id: 12, 
   qualification: 0.0,
   images_attributes: [{
      picture: File.open('public/images/entrenador1.jpg'),
      name: "Entrenador4"
    }]
})
trainer_detail4.save!

trainer_detail5 = TrainerDetail.create({
   description: "Se entrenan perros de razas pequeñas, para el cuidado de bebes",
   status: "Aprobado", 
   user_id: 11, 
   qualification: 0.0,
   images_attributes: [{
      picture: File.open('public/images/entrenador2.jpg'),
      name: "Entrenador5"
    }]
})
trainer_detail5.save!

trainer_detail6 = TrainerDetail.create({
   description: "Se entrenan perros y gatos de todas las razas y edades",
   status: "Aprobado", 
   user_id: 10, 
   qualification: 0.0,
   images_attributes: [{
      picture: File.open('public/images/entrenador41.jpg'),
      name: "Entrenador6"
    }]
})
trainer_detail6.save!