history1 = History.new(
  title: "Capitán, el perro que vive junto a la tumba de su dueño",
  description: "Desde que Miguel murió, su perro Capitán se siente muy solo. 
    Una de las formas que tiene de expresarlo y estar más cerca del que fue su amo 
    y cuidador es acercándose cada día a la tumba, en la ciudad argentina de Córdoba, 
    y tumbándose encima. Según explicó la esposa de Miguel, el perro fue un regalo para 
    su hijo. Días después de la muerte de Miguel, Capitán desapareció de casa; estuvo 
    durante un tiempo durmiendo en la calle, hasta que le perdieron el rastro. 
    Un día, madre e hijo fueron a visitar la tumba de Miguel y se encontraron allí a Capitán. 
    El perro se nos acercó ladrando, como si llorara, confiesan. 
    Aunque lo llamaron el can permaneció inmóvil, en la tumba. 
    Una semana más tarde volvieron al cementerio y se toparon de nuevo con Capitán. 
    Esta vez regresó con ellos a casa, pero sigue visitando la tumba de Miguel a diario.",
    history_status: 'publicada',
    user_id: 1,
    images_attributes: [{
      picture: File.open('public/images/capitan.jpg'),
      name: "Capitán, el perro que vive junto a la tumba de su dueño"
    }]
)

history1.save

historia2 = History.new({
  title: "Lasers Y un Doberman muy Juguetón",
  description: "Una tarde de invierno, mi esposo vio por la ventana que un hombre salió a pasear por el parque desierto a un enorme Doberman. El perro tenía muchas ganas de jugar, pero su dueño estaba sumergido en una conversación telefónica con alguien, y no le prestaba atención. Y entonces mi esposo tomó un puntero láser y comenzó a jugar. Con el Doberman de otra persona. Desde el piso 13. El Doberman galopaba por el parque, saltando y chillando de alegría. El dueño seguía hablando a un costado. Todos estaban felices.",
  history_status: 'publicada',
  user_id: 1
})
historia2.save

historia3 = History.new({
  title: "Luna",
  description: "Luna fue encontrada hace aproximadamente 8 meses, y poco se parecía a una husky siberiana: estaba muy flaca y, debido a la sarna, casi no le quedaba pelo. Pero gracias al amor y los cuidados de su nuevo dueño, esta perrita nuevamente se convirtió en un ser peludo y feliz.",
  history_status: 'publicada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/luna1.jpg'),
      name: "Luna"
    }]
})
historia3.save

historia4 = History.new({
  title: "Jingle",
  description: "Jingle tiene un pasado triste: lo usaban en peleas de perros, donde recibió muchas lesiones serias. Él estaba muy desnutrido y asustado. Este pitbull fue encontrado por un matrimonio de personas de la tercera edad. Los paseos calmaban al perro, por lo que lo sacaban a caminar hasta 6 veces al día, lo cual también tuvo un buen efecto en la nueva dueña de Jingle: antes de que el perro llegara a su vida, varias veces al año, Anne terminaba en un hospital con problemas de corazón, pero ahora los resultados de su ECG son excelentes.",
  history_status: 'publicada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/jingle.jpg'),
      name: "Jingle"
    }]
})
historia4.save


historia5 = History.new({
  title: "Sophie",
  description: "Sophie fue encontrada en febrero: estaba acostada sin moverse en una pila de basura, su cuerpo estaba lleno de cicatrices, lesiones y garrapatas. Después de múltiples baños curativos y un curso de antibióticos, las heridas se curaron. A ella le caen bien las personas y le gusta que la abracen, pero hasta ahora le dan miedo los demás canes.",
  history_status: 'publicada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/sophie.jpg'),
      name: "Sophie"
    }]
})
historia5.save

historia6 = History.new({
  title: "Bruce",
  description: "Hace 2 años, Kathryn van Beek, encontró en la acera bajo la lluvia una diminuta bola de pelos mojada, en la cual ni siquiera reconoció a un gato a primera vista. Durante los siguientes días, el estado del gatito empeoraba, pero los cuidados que le brindó Kathryn a lo largo de 6 semanas ayudaron a curarlo. El color gris de su pelaje se debía a una fiebre que heredan los gatitos nacidos de una mamá con un estrés fuerte. Ahora, este felino tiene más de 2 años, es muy activo e independiente, pero, al mismo tiempo, increíblemente cariñoso y agradecido", 
  history_status: 'publicada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/bruce.jpg'),
      name: "Bruce"
    }]
})
historia6.save

historia7 = History.new({
  title: "Kelly",
  description: "Cuando un peatón casual vio a Kelly, ni siquiera pudo entender qué criatura era. Ella estaba corriendo por un desierto, totalmente quemada, y cada paso le provocaba un gran dolor. Nadie sabe cuánto tiempo estuvo sola, pero cuando el hombre la llamó, ella se metió directamente en su auto. El señor la llevó a una clínica veterinaria, donde le esperaba todo tipo de tratamientos: un curso de antibióticos intensivos y baños curativos. Todo esto le causaba molestias, pero Kelly lo aguantaba valientemente y se dejaba curar. Un mes después, se volvió totalmente irreconocible.",
  history_status: 'publicada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/kelly.jpg'),
      name: "Kelly"
    }]
})
historia7.save

historia8 = History.new({
  title: "Penny",
  description: "Una noche fría de enero, un hombre que vivía en Erlton (Nueva York), abrió la puerta de entrada y recibió una visita inesperada: se le acercó un perro extremadamente delgado, sin pelo y con lesiones serias, que estaba temblando del frío. Resulta que la habían abandonado en el camino. Penny tenía una enfermedad cutánea grave que se llama dermodecosis, provocada por ácaros y garrapatas; de no ser tratada, esto puede causar la muerte del animal. En tan solo una semana, el estado y el aspecto de la perrita cambiaron: dejó de rascarse y sus lesiones empezaron a curarse. Penny encontró una nueva familia que la quiere y su dueño anterior fue arrestado.",
  history_status: 'publicada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/penny.jpg'),
      name: "Penny"
    }]
})
historia8.save

historia9 = History.new({
  title: "Samuel",
  description: "Cuando Samuel fue encontrado, estaba muy flaco, tenía los ojos hinchados por la comezón y un montón de otras enfermedades. Durante 2 años, había vivido en una jaula transportadora de gatos encerrado, así que no sabía cómo reaccionar frente a los humanos nuevos. En condiciones normales, el gato poco a poco empezó a ganar peso, a recuperar la vista y a conocer el mundo: él no sabía jugar, los paseos eran algo especial, y le tenía miedo a su propia sombra y reflejo. Ahora, Samuel es un gato peludo y feliz, que encontró a su humano y venció su miedo a los muebles.",
  history_status: 'publicada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/samuel.jpg'),
      name: "Samuel"
    }]
})
historia9.save

historia10 = History.new({
  title: "Hércules",
  description: "Hércules vivía en un basurero y lo que más quería era encontrar un hogar. Por eso, cada vez que el perro veía un auto con voluntarios, se apoyaba con sus patas delanteras en el carro y miraba a cada persona, esperando que alguien se lo llevara. Pero vivía con otros 800 perros, y su vida era increíblemente complicada, sobre todo, en invierno. En primer lugar, la ayuda la recibían los cachorros y los perritos viejos que no batallaban para sobrevivir en tales condiciones. Y como Hércules no era ni pequeño, ni anciano, y se veía bastante saludable, su probabilidad de ser adoptado era casi nula. Pero este animal quería tanto ser un perro de casa, que el corazón de una de las chicas no pudo resistir su mirada y la llevó a adoptar a Hércules junto con su mejor amigo.",
  history_status: 'publicada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/hercules.jpg'),
      name: "Hercules"
    }]
})
historia10.save

historia11 = History.new({
  title: "Valentino",
  description: "Hace un año, nadie quería acercarse a este gato: no podía abrir los ojos debido a la comezón, estaba encerrado en una jaula y lloraba. Le ayudó Elaine Seamans, fundadora de Leave No Paws Behind: ella tomó al felino en sus brazos y él, inmediatamente, puso su cabeza en su hombro. Ahora, Valentino encontró a su familia. Es un gato muy valiente que no les teme ni a los perros, adora estar sentado en el alféizar y hasta tiene un poco de sobrepeso.",
  history_status: 'inactiva',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/valentino.jpg'),
      name: "Valentino"
    }]
})
historia11.save

historia12 = History.new({
  title: "Fox",
  description: "Fox fue encontrado en una gasolinera fuera de servicio en un sillón viejo. Su rescate fue apoyado por otro perro callejero (Tessa), quien llamó la atención de los humanos y los llevó a ese can. Al principio, todos pensaron que solo era un animal flaco, pero la situación era mucho peor: el perro tenía muchas garrapatas y heridas infectadas, y sus dientes estaban rotos. Después de que Fox llegara a una clínica veterinaria, le regalaron un elefante de peluche, y fue la primera cosa que amó. Se necesitó tiempo para que entendiera que ahora siempre tendría juguetes, una manta y personas que lo quieren.",
  history_status: 'rechazada',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/fox.jpg'),
      name: "Fox"
    }]
})
historia12.save


historia13 = History.new({
  title: "El Pequeño Héroe",
  description: "El padre de Ken notó que su hijo empezó a desaparecer durante varias horas al día. Una tarde, decidió seguir al niño y descubrir qué estaba haciendo. El corazón del hombre se derritió cuando vio cómo el pequeño alimentaba a perros callejeros. Algunas de las personas que se enteraron del acto de bondad, decidieron sacrificar dinero para que Ken pudiera darles buena comida a los perritos y brindarles ayuda veterinaria. Con el tiempo, los animales subieron de peso, sus heridas se curaron y su pelaje creció, entonces el niño le dijo a su padre que quería abrir un albergue animal. Su papá le explicó que para eso primero necesitaba crecer y ahorrar dinero. Pero esta vez, también ayudaron un montón de buenas personas. Gracias a las donaciones, Ken logró rentar un espacio de casi mil metros cuadrados y lo bautizó “El club de los animales felices”. Es el primer albergue en la parte sur de Mindanao (Filipinas) y el único que funciona en la región.",
  history_status: 'en revision',
  user_id: 1,
  images_attributes: [{
      picture: File.open('public/images/pequeñoHereo.jpg'),
      name: "El Pequeño Héroe"
    }]
})
historia13.save