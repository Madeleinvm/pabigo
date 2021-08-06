solicitud1 = Request.new(
  tipo: "Medicina",
  descripcion: "Mi perro Fiby es muy carinosa, sin embargo ultimamente ha
  estado vomitando mucho y no dispongo de los recursos necesarios para comprar
  las medicinas PerrariNox 2 mg 5 caja al 10%, Fibi es muy juguetona y le agradara
  saber a esa mano tan generosa",
  direccion: "Calle Los Ángeles, Edificio Los Ángeles (al lado del Sambil)
Chacao, Caracas, Distrito Federal C.P. 1060
Venezuela",
  user_id: 2,
  name: "Lucas",
  last_name: "Vazque",
  email: "lucas@gaz.com",
  images_attributes: [{
    picture: File.open('public/images/requester/24-mascotas-que-se-parecen-demasiado-a-sus-duenos-1481886752.jpg'),
    name: "Capitán, el perro que vive junto a la tumba de su dueño"
  }]
)

solicitud1.save!

solicitud1 = Request.new(
  tipo: "Monetario",
  descripcion: "Soy el Veterinario Elias, trabajo en la clinica caracas como analista de corazon de perros Y
  gatos, lamentablemente mi sueldo no me alcanza para comprar comida y vacuna a gatuno y perruno, mis dos angelitos,
  quien me pudiese ayudar con gusto le hago una revision gratis de su mascota, necesito a lo sumo el equivalente
  de 300$ en bolivares o 278 euros ",
  direccion: "Calle 9, Edif. Lam-Bar, Nivel PB, Local 1, La Urbina, Caracas",
  user_id: 3,
  name: "Elias",
  last_name: "Coromoto",
  email: "elias@clinicacaracas.com",
  images_attributes: [{
    picture: File.open('public/images/requester/depositphotos_39369927-stock-photo-happy-vet-with-dog-and.jpg'),
    name: "Capitán, el perro que vive junto a la tumba de su dueño"
  }]
)

solicitud1.save!

solicitud1 = Request.new(
  tipo: "Comida",
  descripcion: "Nikita , mi perra es muy comelona pero exquisita y buscando por todas Caracas
  no encuentro su perrarina favorita llamada PerrariShow, necesitaria 5 bolsas o 4 bolsas
  de ShowDog, A nikita tambien le encantaria de esa marca. Muy agradecida de antemano ",
  direccion: "Calle 2A, Edif. Lomas de la Legal, Piso 8, Naguaita, El Marques",
  user_id: 4,
  name: "Yohelis",
  last_name: "Hernandez",
  email: "yohelis@yahoo.com",
  images_attributes: [{
    picture: File.open('public/images/requester/7c8bf014-cc1f-4885-98d3-55b4c8d05b32_879_586.jpg'),
    name: "Capitán, el perro que vive junto a la tumba de su dueño"
  }]
)

solicitud1.save!

solicitud1 = Request.new(
  tipo: "Accesorios",
  descripcion: "Mi nombre es Palacio y mi perro, Filandio, es mi mejor amigo desde hace 1 decada
  me cuida, juega conmigo y me hace sentir el hombre mas afortunado del mundo. Siento que le debo
  mucho y me gustaria solicitar 1 cama para perros tipo lobo Siberiano, 3 juguetes y su propia
  almohada, quien ayude a Filandio sera bendecido por el perro mas genial de la tierra",
  user_id: 5,
  direccion: "Casa Clara. Turumo, quinta Gerosio, subiendo a la montana, preguntar por correo para mas informacion",
  name: "Palacio",
  last_name: "Carrera",
  email: "palacios2@gmail.com",
  images_attributes: [{
    picture: File.open('public/images/requester/Hospital-Universitario-Torrevieja-visita-perros-678x381.jpg'),
    name: "Capitán, el perro que vive junto a la tumba de su dueño"
  }]
)

solicitud1.save!

solicitud1 = Request.new(
  tipo: "Otros",
  descripcion: "Que onda les manda a decir Politigato, el Politigato y yo estamos falta de recursos
  lamentablemente por la situacion del pais y necesitamos cualquier cosa, ya sea 5 juguetes, 16 kilos
  de gatarina y/o 1 servicio de vacunacion.",
  user_id: 6,
  direccion: "Calle 5C, Edif. Sandro Rosal, Piso 2, Los Palos Grandes",
  name: "Carlos",
  last_name: "Camacho",
  email: "pcamachin2@gmail.com",
  images_attributes: [{
    picture: File.open('public/images/requester/gatos-huracan-sandy.jpeg'),
    name: "Capitán, el perro que vive junto a la tumba de su dueño"
  }]
)

solicitud1.save!

solicitud1 = Request.new(
  tipo: "Otros",
  descripcion: "Estos son mis ultimos dias y todo lo que me queda es mi gato y mi fortuna,
  no pido ni comida ni dinero. Solo pido que cuiden a mi gato como el lo hizo, le retribuire
  con cualquier tipo de donacion de hasta 1 decada de ser necesario",
  user_id: 3,
  direccion: "Lomas de la Lagunita country club, 5 cuadras, hablar con el vigilante por CarmeloGucci",
  name: "Carmelo",
  last_name: "Brancaleone",
  email: "carmelo@gucci.com",
  images_attributes: [{
    picture: File.open('public/images/requester/gato_que_chupa_la_calva_de_su_dueno.jpg'),
    name: "Capitán, el perro que vive junto a la tumba de su dueño"
  }]
)

solicitud1.save!
