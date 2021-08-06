pension1 = Pension.create({
   nombre: "Lolitas",
   red_social: "loli",
   correo: "lol@pabigo.com",
   description: "El mejor cuidado a los consentidos de la casa",
   status: "Aprobada",
   qualification: 3.2, 
   images_attributes: [{
      picture: File.open('public/images/pension1.jpg'),
      name: "Pension1"
    }]
})
pension1.save!

pension2 = Pension.create({
   nombre: "HotDog",
   red_social: "5LD",
   correo: "hotdog@pabigo.com",
   description: "Casa para perros, siempre que lo necesites",
   status: "Aprobada",
   qualification: 4.7,
   images_attributes: [{
      picture: File.open('public/images/pension2.jpg'),
      name: "Pension2"
    }]
})
pension2.save!

pension3 = Pension.create({
   nombre: "Pensiones Gat",
   red_social: "pengat",
   correo: "pengat@pabigo.com",
   description: "Se cuidan las mascotas, con el mayor de los cariños",
   status: "Aprobada",
   qualification: 3.2, 
   images_attributes: [{
      picture: File.open('public/images/pension3.jpg'),
      name: "Pension3"
    }]
})
pension3.save!

