donation1 = Donation.create({
    user_id:"1",
    dontype: "Monetaria",
    name: "Transferencia",
    quantity: "200",
    description: "Se solicita una donación para ayudar a los perros de un refugio",
    benefited: "Perro",
    shipping: "Cuenta:020399288290922, Banco:Provincial, Rif:3424553, Cuenta Corriente, Nombre:Pabigo"
})
donation1.save!
 
donation2 = Donation.create({
    user_id:"1",
    dontype: "Producto",
    name: "Perrarina",
    quantity: "25",
    description: "Se solicita comida para perros pequeños",
    benefited: "Perro",
    shipping: "Caracas, Montalban III, Ave. Teheran, Universidad Católica Andrés Bello",
    images_attributes: [{
       picture: File.open('public/images/perrarina.jpg'),
       name: "DonacionApp"
     }]
 })
 donation2.save!


donation3 = Donation.create({
    user_id:"1",
    dontype: "Monetaria",
    name: "Transferencia",
    quantity: "100",
    description: "Se solicita una donación para ayudar a los gatos de un refugio",
    benefited: "Gato",
    shipping: "Cuenta:020399288290922, Banco:Provincial, Rif:3424553, Cuenta Corriente, Nombre:Pabigo"
})
donation3.save!


donation4 = Donation.create({
    user_id:"1",
    dontype: "Monetaria",
    name: "Transferencia",
    quantity: "20",
    description: "Se solicita una donación para comprar camas",
    benefited: "Ambos",
    shipping: "Cuenta:020399288290922, Banco:Provincial, Rif:3424553, Cuenta Corriente, Nombre:Pabigo"
})
donation4.save!

donation5 = Donation.create({
    user_id:"1",
    dontype: "Producto",
    name: "Gatarina",
    quantity: "25",
    description: "Se solicita comida para gatos",
    benefited: "Gato",
    shipping: "Caracas, Montalban III, Ave. Teheran, Universidad Católica Andrés Bello",
    images_attributes: [{
       picture: File.open('public/images/gatarina.jpg'),
       name: "DonacionApp"
     }]
 })
 donation5.save!

 donation6 = Donation.create({
    user_id:"1",
    dontype: "Monetaria",
    name: "Transferencia",
    quantity: "500",
    description: "Tenemos 2 perros con emergencias médicas",
    benefited: "Perro",
    shipping: "Cuenta:020399288290922, Banco:Provincial, Rif:3424553, Cuenta Corriente, Nombre:Pabigo"
})
donation6.save!

 donation7 = Donation.create({
    user_id:"1",
    dontype: "Monetaria",
    name: "Transferencia",
    quantity: "80",
    description: "Tenemos 2 gatos con emergencias médicas",
    benefited: "Gato",
    shipping: "Cuenta:020399288290922, Banco:Provincial, Rif:3424553, Cuenta Corriente, Nombre:Pabigo"
})
 donation7.save!

donation8 = Donation.create({
    user_id:"1",
    dontype: "Producto",
    name: "shampoo",
    quantity: "7",
    description: "Se utilizaran en perros de refugios",
    benefited: "Perro",
    shipping: "Caracas, Montalban III, Ave. Teheran, Universidad Católica Andrés Bello",
    images_attributes: [{
       picture: File.open('public/images/shap.jpg'),
       name: "DonacionApp"
     }]
 })
 donation8.save!

donation9 = Donation.create({
    user_id:"1",
    dontype: "Producto",
    name: "Desparasitante",
    quantity: "50",
    description: "Donación que se enviará al veterinario social",
    benefited: "Ambos",
    shipping: "Caracas, Montalban III, Ave. Teheran, Universidad Católica Andrés Bello",
    images_attributes: [{
       picture: File.open('public/images/vet.jpg'),
       name: "DonacionApp"
     }]
 })
 donation9.save!