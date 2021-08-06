
user1 = User.create({
    id:"600",
    email: "carhil08@gmail.com",
    password: "P4ssw*rd"
})
    Profile.create!(
      name: "Lisa",
      last_name: "Simpson",
      male: "False",
      user: user1
    )
    Phone.new(
      number: "04148845612",
      phoneable_type: "User",
      phoneable_id: user1.id,
      phone_type: PhoneType.first
    ).save!(validate: false)

user1.save!

user2 = User.create({
    id:"603",
    email: "fernanrainier@gmail.com",
    password: "P4ssw*rd",
})
    Profile.create!(
      name: "Fernando",
      last_name: "Obregon",
      male: "False",
      user: user2
    )
    Phone.new(
      number: "04121452088",
      phoneable_type: "User",
      phoneable_id: user2.id,
      phone_type: PhoneType.first
    ).save!(validate: false)

user2.save!