a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
})

a.save!

# r = Race.new({
#   name: "Husky",
#   height: 1.1,
#   weight: 1.1,
#   fur: "Long",
#   physical_details: "Strong, shor hears and big paws",
#   character: "Friendly",
#   care: "Easy to take care",
#   health: "When older usually gets hips problems",
#   story: "Hay evidencias de que los siberianos han sido importados desde las tribus de koryak y kamchadal. Recientes análisis de ADN revelan que esta es una de las más antiguas razas de perros en el mundo. Fueron llevados a Alaska desde el año 1905 y continuamente durante dos décadas debido a la fiebre del oro. Fueron empleados para tirar de trineos, y especialmente para la carrera All-Alaska Sweepstakes, que comprendía 657 km desde Nome hasta Candle ida y vuelta. De menor tamaño, más rápidos y de mayor resistencia que los perros comunes (entre 45 y 54 kg) usados en general, los siberianos inmediatamente dominaron la carrera.",
#   color: "Black and white",
#   affectivity: 4,
#   docility: 7,
#   bustling: 9,
#   playful: 6,
#   grooming: 1,
#   hair_loosner: 9,
#   kids: 10,
#   species: "Perro",
# })

# r.save!

# i = Image.new({
#   name: "foto",
#   picture: Pathname.new("public/uploads/image/Husky_siberiano.jpeg").open,
#   imageable_type: "Pet",
#   imageable_id: r.id,
#   
# 
# })

# i.save!

u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id
})


i.save!


a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!

a = Adoption.new({
  adoption_date: "2018-01-19 03:14:07.965581",
  users_id: 1,
  

})

a.save!


u = Pet.new({
  adoptions_id: a.id,
  races_id: 1,
  name: "Lolo",
  aprox_age: 1,
  dewormed: false,
  neutered: false,
  special_needs: false,
  species: "perro",
  weight: 10,
  description:"descripcion",
  

  
})

u.save!

i = Image.new({
  name: "foto",
  picture: Pathname.new("public/images/husky.jpeg").open,
  imageable_type: "Pet",
  imageable_id: u.id,
  

})


i.save!


p "Created #{Pet.count} pets"