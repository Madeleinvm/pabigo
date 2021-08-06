u = Institution.new({
  name: "Asociación para la Defensa y Protección de los Animales ASODEPA",
  description: "Quos eligendi ut. Consequatur ex in. Magnam enim sed",
  address: "Parcelamiento Buena Vista, Calle No. 100 (Calle de la Virgen) Diagonal a la Granja “La Providencia”. Vía al Aeropuerto Internacional “La Chinita",
  phone: "04241512904",
  email: "refugioasodepa@gmail.com",
  web: "www.apoyocanino.com"
})

u.save!

u = Institution.new({
  name: "Fundación ASOGUAU Protección Animal",
  description: "Sit et possimus. Deleniti molestias maiores. Totam tempore repellendus",
  address: "Hospital de Mascotas y la Fundación ASOGUAU se encuentran ubicados en la Urb. La campiña, Av. 103, casa No.3",
  phone: "04241512904",
  email: "pabigo@gmail.com",
  web: "www.asoguau.org"
})

u.save!

u = Institution.new({
  name: "Provida Animal Unimet",
  description: "Corrupti quam placeat. Molestias beatae doloribus. Repellat corporis eveniet.",
  address: "Universidad Metropolitana, Autopista Guarenas, Sector La Urbina, Distribuidor Metropolitano",
  phone: "424198.87",
  email: "infoprovidaanima@gmail.com",
  web: "www.providaanimal.com"
})

u.save!

u = Institution.new({
  name: "Asociación Prodefensa de los Animales – APROA",
  description: "Aperiam illum totam. Repudiandae fuga nulla. Culpa nostrum architecto.",
  address: "Consultorio Veterinario Dr. “D. Santiago”: Los Chaguaramos, calle Aranda (entre Facultad y Ciencias), Qta. Sarín. ",
  phone: "----.---.----",
  email: "info@aproa.ve",
  web: "www.aproa.ve"
})

u.save!

p "Created #{Institution.count} institutions"

u = Journal.create!([{
tipe_journal: "Jornada de Vacunacion",
place_journal: "Caracas",
time_journal: "04:05 PM",
date_journal: "20/12/2018",
description_journal: "Jornada de vacunacion gratis para todas las mascotas"
}
])

p "Created #{Journal.count} journals"

w = User.new({

  
  email:"prueba2@ad.com",
  password:"P4ssw*rd",
  password_confirmation:"P4ssw*rd"



})

w.save!

p "Created #{User.count} user"


u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!


u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



u = New.new({
  
  title:"Este es el titulo 1",
  content1:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla molestie pellentesque finibus. Etiam dolor ligula, ullamcorper quis cursus rutrum, volutpat vel diam.        Suspendisse condimentum convallis dui nec fermentum. Etiam consequat eleifend tortor, sit amet blandit ante condimentum vitae. Fusce ac lobortis metus. Fusce accumsan        congue nibh ut blandit. Nulla sodales quis turpis vitae tincidunt. ",
  content2:"vulputate, est quis faucibus vehicula, quam nisi condimentum mi, vel malesuada nibh nisl a odio. In accumsan consectetur urna, et congue lectus mattis at. Sed at ligula et         tellus feugiat aliquam. Nulla at pellentesque massa.

      Aenean vel augue aliquam metus efficitur luctus. Curabitur scelerisque libero nisl, ut consequat dui posuere quis. Nulla convallis faucibus mollis. Fusce iaculis ex ac       mi iaculis tincidunt. Maecenas ante arcu, vulputate non elementum sed, posuere vehicula dui. In faucibus libero urna, vestibulum ornare libero tempus quis",
  visits:45,
  user_id: w.id,
  created_at:"2038-01-19T03:14:07.000Z",
  updated_at:"2038-01-19T03:14:07.000Z",

})


u.save!



p "Created #{New.count} News"

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

r = User.new(
email: Faker::Internet.email, 
password: "holabebe", 
password_confirmation: "holabebe"
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
  updated_at: "2038-01-19T03:14:07.000Z"
})


u.save!

p "Created #{Walker.count} walkers"

pregunta1 = Ask.new({

  campo: "¿Es bueno tener un perro en casa?",
  answer: "Desde luego que sí, no estás atentando ninguna ley ni normal que lo prohíba. Son animales domésticos, aunque bien es cierto que necesitan un espacio y libertad para correr y disfrutar de la vida. Si esos requisitos no se cumplen en tu hogar porque es muy pequeño, entonces intenta adoptar o hacerte con un perro más menudito. De todas formas, sea el perro que sea, deberás sacarle a la calle con frecuencia para que pueda sentir el sol, el aire fresco y la tierra bajo sus pezuñas.",
  tipo: "Perros",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta1.save

pregunta2 = Ask.new({

  campo: "¿Qué ejercicios son saludables para un perro?",
  answer: "Correr, Saltar, Dormir, Jugar y sobre todo al aire libre.",
  tipo: "Perros",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta2.save

pregunta3 = Ask.new({

  campo: "¿Qué alimentos están prohibidos para un perro?",
  answer: "El chocolate y todo lo que tenga que ver con dulces.",
  tipo: "Perros",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta3.save

pregunta4 = Ask.new({

  campo: "¿Cómo evito que el gato coma basura?",
  answer: "En casa se puede evitar cerrando bien el cubo de basura, alejándolo de su alcance y vaciándole a diario, ya que emite olores muy fuerte que atraerán a tu perro. En la calle deberás limitarte a que cada vez que quiera llevarse algo a la boca que pueda ser tóxico o dañino le regañes de forma enérgica y darle un toque en el hocico (leve, sin hacer daño).",
  tipo: "Gatos",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta4.save


pregunta7 = Ask.new({

  campo: "¿Qué ejercicios son saludables para un gato?",
  answer: "Ellos hacen ejercicio mejor que uno",
  tipo: "Gatos",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta7.save


pregunta56 = Ask.new({

  campo: "¿El perro puede dormir conmigo en la cama?",
  answer: "Por su puesto que no, hacen desastre porque es muy pequeño, entonces intenta adoptar o hacerte con un perro más menudito. De todas formas, sea el perro que sea, deberás sacarle a la calle con frecuencia para que pueda sentir el sol, el aire fresco y la tierra bajo sus pezuñas.",
  tipo: "Perros",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta56.save


pregunta10 = Ask.new({

  campo: "¿Qué alimentos puede comer un gato?",
  answer: "Alimentalo con pescado, mucho pescado.",
  tipo: "Gatos",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta10.save

pregunta11 = Ask.new({

  campo: "¿Cómo evito que firulay, mi perro, coma basura?",
  answer: "En casa se puede evitar cerrando bien el cubo de basura, alejándolo de su alcance y vaciándole a diario, ya que emite olores muy fuerte que atraerán a tu perro. En la calle deberás limitarte a que cada vez que quiera llevarse algo a la boca que pueda ser tóxico o dañino le regañes de forma enérgica y darle un toque en el hocico (leve, sin hacer daño).",
  tipo: "Perros",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta11.save

pregunta12 = Ask.new({

  campo: "¿Puedo tener un gato en una casa",
  answer: "Esta última pregunta sobre mascotas es una de las más habituales. Es importante que estés tú en el momento de la presentación si vas a tener un perro y un gato conviviendo en la misma casa. Si son cachorros será más fácil que se acepten el uno al otro.",
  tipo: "Gatos",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta12.save


pregunta15 = Ask.new({

  campo: "¿Son comunes las arcadas por bolas de pelo en los gatos?",
  answer: "Sí, lo son y no suponen un riesgo para su salud. El problema es si confundimos una arcada por una bola de pelo a una por un objeto extraño o atragantamiento (se identifica con tan solo fijarnos en su respiración o con toses continuas)",
  tipo: "Gatos",
  user_id: "1",
  doctor: "Administrador",
  created_at: "2008-01-19T03:14:07.000Z",
  updated_at: "2008-01-19T03:14:07.000Z",
})

pregunta15.save