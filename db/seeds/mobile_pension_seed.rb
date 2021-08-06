s = ['Aprovado', 'Rechazado', 'En espera']
t = rand(3)
u = Pension.new({
  description: Faker::Lorem.paragraph,
  status: s[t],
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  nombre: Faker::Company.name,
  red_social: Faker::Internet.username,
  correo: Faker::Internet.email
})

u.save!

p "Created #{Pension.count} pensions"