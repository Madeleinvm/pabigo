r = User.new(
email: Faker::Internet.email, 
password: "P4ssw*rd", 
password_confirmation: "P4ssw*rd"
)
r.save!
p "Created #{User.count} user"
t = UserRole.new({
  user_id: "2",
  role_id: "5",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z"
})
t.save!
p "Created #{UserRole.count} user_role"
e = Profile.new({
name: Faker::Name.first_name,
last_name: Faker::Name.last_name,
male: "true",
user_id: "2",
})
e.save!
p "Created #{Profile.count} profile"
u = Walker.new({
  role_id: "5",
  start_time: "8",
  end_time: "12",
  day: "Monday",
  city: "caracas",
  date_of_birth: "2038-01-19T03:14:07.000Z",
  calification: "6",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  user_id: "#{User.count}",
  status: "Aprobado",
  description: "hola bebe"
})


u.save!

p "Created #{Walker.count} walkers"