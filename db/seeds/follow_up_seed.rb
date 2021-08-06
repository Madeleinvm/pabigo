user1 = User.create({
    id:"500",
    email: "madeleinvm16@gmail.com",
    password: "P4ssw*rd"
})
    Profile.create!(
      name: "Maria",
      last_name: "Perez",
      male: "False",
      user: user1
    )
    Phone.new(
      number: "04147628787",
      phoneable_type: "User",
      phoneable_id: user1.id,
      phone_type: PhoneType.first
    ).save!(validate: false)

user1.save!

user2 = User.create({
    id:"501",
    email: "madeflaca16@gmail.com",
    password: "P4ssw*rd",
})
    Profile.create!(
      name: "Sofia",
      last_name: "Mendez",
      male: "False",
      user: user2
    )
    Phone.new(
      number: "04147628787",
      phoneable_type: "User",
      phoneable_id: user2.id,
      phone_type: PhoneType.first
    ).save!(validate: false)

user2.save!

adoption1 = Adoption.create({
    adoption_date: "2018-01-07 05:14:07",
    users_id: "500",
    adopter_id: "501"
})
adoption1.save!

adoption2 = Adoption.create({
    adoption_date: "2018-01-07 05:14:07",
    users_id: "501",
    adopter_id: "500"
})
adoption2.save!


  
