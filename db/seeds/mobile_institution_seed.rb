u = Institution.create!([{
  name: "Asociación para la Defensa y Protección de los Animales ASODEPA",
  description: "Quos eligendi ut. Consequatur ex in. Magnam enim sed",
  address: "Parcelamiento Buena Vista, Calle No. 100 (Calle de la Virgen) Diagonal a la Granja “La Providencia”. Vía al Aeropuerto Internacional “La Chinita",
  phone: "04241512904",
  email: "refugioasodepa@gmail.com",
  web: "www.apoyocanino.com"
},{
  name: "Fundación ASOGUAU Protección Animal",
  description: "Sit et possimus. Deleniti molestias maiores. Totam tempore repellendus",
  address: "Hospital de Mascotas y la Fundación ASOGUAU se encuentran ubicados en la Urb. La campiña, Av. 103, casa No.3",
  phone: "04241512904",
  email: "pabigo@gmail.com",
  web: "www.asoguau.org"
},{
  name: "Provida Animal Unimet",
  description: "Corrupti quam placeat. Molestias beatae doloribus. Repellat corporis eveniet.",
  address: "Universidad Metropolitana, Autopista Guarenas, Sector La Urbina, Distribuidor Metropolitano",
  phone: "424198.87",
  email: "infoprovidaanima@gmail.com",
  web: "www.providaanimal.com"
},{
  name: "Asociación Prodefensa de los Animales – APROA",
  description: "Aperiam illum totam. Repudiandae fuga nulla. Culpa nostrum architecto.",
  address: "Consultorio Veterinario Dr. “D. Santiago”: Los Chaguaramos, calle Aranda (entre Facultad y Ciencias), Qta. Sarín. ",
  phone: "----.---.----",
  email: "info@aproa.ve",
  web: "www.aproa.ve"
}
])

p "Created #{Institution.count} institutions"