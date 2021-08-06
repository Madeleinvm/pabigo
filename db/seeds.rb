puts 'Start Seeding'

# --- IMPORTANT SEEDS NEEDED TO RUN THE APPLICATION NORMALLY --- START ---
puts 'Roles'
roles = Role::ROLES
roles.each do |role|
  Role.find_or_create_by!(name: role)
end

puts 'Admin'
PASSWORD = 'password'
admin = User.new(email: 'admin@pabigo.com', password: PASSWORD, password_confirmation: PASSWORD)
admin.save!(validate: false) unless User.first

puts 'Admin\'s Profile'
admin.build_profile.save!(validate: false) unless admin.profile

puts 'Admin\'s Role'
admin.role_ids = [Role.where(name: "Admin").take!.id]
admin.save!(validate: false) unless User.first


puts 'Phone Types'
phone_types = PhoneType::NAMES
phone_types.each do |phone_type|
  PhoneType.find_or_create_by!(name: phone_type)
end

puts 'States and Cities'
states_and_cities = State::STATES_AND_CITIES
for i in 0..states_and_cities.count - 1
  puts "State: #{states_and_cities[i][0]}"
  state = State.find_or_create_by!(name: states_and_cities[i][0])

  for j in 1..states_and_cities[i].count - 1
    puts "Cities:\n"
    puts states_and_cities[i][j]
    for k in 0..states_and_cities[i][j].count - 1
      City.where(name: states_and_cities[i][j][k], state_id: state.id).first_or_create!
    end
  end
end

puts 'Permissions'
permissions = Permission::PERMISSIONS
permissions.each do |permission|
  Permission.find_or_create_by!(name: permission)
end
# --- IMPORTANT SEEDS NEEDED TO RUN THE APPLICATION NORMALLY --- END ---

puts 'Users with profile'
for i in 1..14
  email = Faker::Internet.safe_email
  unless User.where(email: email).any?
    user = User.create!(
      email: email,
      password: PASSWORD
    )
    if rand(2) == 0 then male = true else male = false end
    Profile.create!(
      name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      male: male,
      user: user
    )
    Phone.new(
      number: Faker::PhoneNumber.phone_number,
      phoneable_type: "User",
      phoneable_id: user.id,
      phone_type: PhoneType.first
    ).save!(validate: false)
  end
end

puts 'Tips of Types'
@Tip1 = TipType.create( name: 'Tips de Alimentación'          )
@Tip2 = TipType.create( name: 'Tips de Salud'                 )
@Tip3 = TipType.create( name: 'Tips de Cuidado'               )
@Tip4 = TipType.create( name: 'Tips de Adiestramiento'        )
@Tip5 = TipType.create( name: 'Tips de Cuidado de Cachorros'  )
@Tip6 = TipType.create( name: 'Tips de Prevención'            )



puts 'Tips of take care'
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip3.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip3.id )



puts 'Tips of feeding'
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip1.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip1.id )



puts 'Tips of take care of puppues'
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test1', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test2', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test3', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test4', description: ' description ', tip_types_id: @Tip5.id )
Tip.create(name: 'test5', description: ' description ', tip_types_id: @Tip5.id )

puts 'Categories'
Category.create(name: 'Anuncio de donaciones',        description: 'La organización se mantiene con los aportes de padrinos, ventas de artículos y donaciones particulares.')
@Categorie2 = Category.create(name: "Tips de Alimentación",              description: "Una alimentación saludable consiste en ingerir una variedad de alimentos que te brinden los nutrientes que necesitas para mantenerte sana, sentirte bien y tener energía.")
@Categorie3 = Category.create(name: "Tips de Salud",       description: "Al cuidar de tu mascota puedes mejorar tu salud física y mental.")
@Categorie4 = Category.create(name: "Tips de Cuidado",              description: "Conoce los cuidados que necesita tu mascota y como te puedes beneficiar de ellos.")
@Categorie5 = Category.create(name: "Tips de Adiestramiento",       description: "El adiestramiento es el proceso mediante el cual una persona logra que la mascota aprenda y adquiera destreza en algo, y mantenga esa destreza.")
@Categorie6 = Category.create(name: "Tips de Cuidado de Cachorros", description: "Cómo cuidar de un cachorro.")
@Categorie7 = Category.create(name: "Tips de Prevención",           description: "Consejos para prevenir a perros y gatos de las enfermedades.")
@Categorie8 = Category.create(name: "Jornadas",                     description: "Aquí podrá encontrar información de actividades que están planificadas para las mascotas.")

puts 'Subscriptores'
@Sub1 = Subscription.create(email: "bvpenaloza.11@gmail.com", period: "semanalmente")

# puts 'Subscriptores : Categorias'
# SuscriptionCategory.create( subscription_id: @Sub1.id , category_id: @Categorie8.id )

puts 'Tipes de alimentacion '
Tipe.create( name: 'Hidratación canina' , description: 'beber suficiente agua a lo largo del día, por lo que su recipiente siempre debe tener de sobra. Esta agua debe ser potable, fresca y renovada diariamente. El perro deberá poder beber libremente, siempre que lo desee. El consumo medio diario de agua es de 60 ml por kilo de peso.', category_id: @Categorie2.id )
Tipe.create( name: 'Comidas regulares' , description: 'comer cada día en el mismo lugar, a la misma hora y en el mismo recipiente, el mismo alimento.', category_id: @Categorie2.id )
Tipe.create( name: 'Elige bien el alimento' , description: 'La calidad del alimento no es algo trivial. Ante todo deberán primar los criterios de equilibrio nutritivo. Tres criterios fundamentales intervienen en la elección del buen alimento para un perro: su edad, su nivel de actividad física o fisiológica y su tamaño.', category_id: @Categorie2.id )
Tipe.create( name: 'Higiene excepcional' , description: 'los alimentos industriales ofrecen las mejores garantías de salubridad higiénica. Bien utilizados, no presentan ningún riesgo de intoxicación alimenticia. Cuidado con las cajas empezadas.', category_id: @Categorie2.id )
Tipe.create( name: 'Atención a las transiciones alimentarias' , description: 'Cualquier modificación alimentaria debe hacerse progresivamente (aproximadamente una semana), para permitir al perro adaptarse (gustativa, digestiva y metabólicamente) y para dejar tiempo a su microflora intestinal a reconstituirse específicamente para digerir el nuevo alimento.', category_id: @Categorie2.id )
Tipe.create( name: 'Cuida las cantidades de alimento' , description: 'Calcúlala teniendo en cuenta la necesidad energética diaria del perro y el contenido energético y calórico de los alimentos. Si pesas el alimento diariamente, evitarás cualquier derivación progresiva hacia la obesidad.', category_id: @Categorie2.id )

puts 'Tipes de salud '
Tipe.create( name: 'Evita cargarlo constantemente' , description: 'Trata de resistir esta tentación, porque su cuerpo es muy delicado. Si lo haces, primero coloca una mano sobre su parte posterior y otra bajo el pecho, levántalo con ambas manos y mantenlo junto a tu cuerpo para que se sienta seguro.', category_id: @Categorie3.id )
Tipe.create( name: 'Horario para sus necesidades' , description: 'Establece una rutina regular de alimentación; si se trata de un perro, sácalo de paseo con frecuencia para que haga sus necesidades, especialmente cuando se despierte.', category_id: @Categorie3.id )
Tipe.create( name: 'Cuida su higiene:' , description: 'El cepillado regular es esencial para los perros jóvenes, debido a que elimina el pelo muerto, la suciedad y los parásitos; además, estimula el aporte de sangre hacia la piel, lo que genera un pelaje de aspecto más sano y brillante.', category_id: @Categorie3.id )
Tipe.create( name: 'Supervisa su dentición y masticación: ' , description: 'Para ayudar a que salgan todos los dientes y deje de morder los muebles, tu cachorro necesitará algún objeto indestructible como puede ser un hueso de goma o una pelota para masticar. ', category_id: @Categorie3.id )
Tipe.create( name: 'Una correcta atención sanitaria' , description: 'En el caso de los cachorros, ellos son susceptibles a cualquier enfermedad contagiosa, por lo que es aconsejable realizar una visita temprana al veterinario. Las primeras vacunas se administrarán ya a las 6-8 semanas de', category_id: @Categorie3.id )
Tipe.create( name: 'Dieta y ejercicio' , description: 'Son vitales para el bienestar de tu mascota, sobre todo si se trata de un perro o un gato. Al ser muy juguetones y enérgicos, debes asegurarte de que realizan el ejercicio adecuado. ', category_id: @Categorie3.id )

puts 'Tis de Prevencion'
Tipe.create( name: 'tip sobre rabia' ,                       description: ' La rabia es una de las enfermedades más comunes que pueden transmitir mascotas como los perros y los gatos. Ésta puede poner es riesgo la salud de los humanos y del animal, por lo que es conveniente vacunar siempre a nuestros animales contra esta dolencia. ', category_id: @Categorie7.id )
Tipe.create( name: 'tip sobre cachorro',                     description: ' Mientras tu perro o gato sean cachorros, es importante desparasitarlos de forma frecuente, de este modo evitas el riesgo de contraer enfermedades parasitarias que pueden transmitirse, a través de sus fluidos o excrementos, a cualquier miembro de tu familia ', category_id: @Categorie7.id )
Tipe.create( name: 'tip de mascota adulta',                  description: ' Cuando tu perro o gato lleguen a la adultez visita a tu veterinario una vez al año para desparasitar al animal. El control en esta etapa es también importante ',                                                                                                   category_id: @Categorie7.id )
Tipe.create( name: 'tip sobre mascota y niño',               description: ' Si tienes niños pequeños en casa, es muy importante que les enseñes y refuerces la importancia de lavar sus manos de forma frecuente, en especial antes de comer. El contacto de excrementos infectados de parásitos con el suelo en el que juega el niño, puede ocasionar que se transmitan enfermedades al pequeño o a cualquier otro miembro de la familia. ', category_id: @Categorie7.id )
Tipe.create( name: 'tip sobre el contancto con la masccota', description: ' Atención con el contacto que tenemos con nuestros animales. Puede que los adoremos y no tengamos problema en mostrarles nuestro amor, pero dejar que el animal pase su lengua por nuestra boca o nariz, o besar su hocico, no es una buena idea, pues corremos el riesgo de recibir cualquier enfermedad que el animal pueda tener. ', category_id: @Categorie7.id )
Tipe.create( name: 'tip manejo de las eces fescales',        description: ' Es importante manipular con atención los excrementos de nuestras mascotas para evitar el contagio de enfermedades. Siempre utiliza guantes y sé cauteloso cuando limpies la jaula de tus pájaros, la caja de arena del gato o el lugar en el que descansa cualquiera de tus mascotas. ', category_id: @Categorie7.id )
Tipe.create( name: 'tip sobre pulgas',                       description: ' Por último es importante comprobar, al menos dos veces al mes, si nuestra mascota tiene pulgas o garrapatas, pues estos parásitos son portadores de muchas enfermedades que ponen en riesgo nuestra salu ', category_id: @Categorie7.id )


puts 'Tipes de Cuidado'
Tipe.create( name: 'Mantener un peso saludable:' , description: 'Este consejo aplica tanto para mascotas como para los dueños. Uno lleva una vida más ligera cuando no tiene que preocuparse por cargar kilos extra. Tú controlas lo que les estás dando de comer, asegúrate que no les estés dando aserrín. También controla sus porciones y asegúrate que están caminando o corriendo lo suficiente para quemar las calorías. Si hace falta, cómprale también un juguete que lo mantenga activo aún dentro de casa.', category_id: @Categorie4.id )
Tipe.create( name: 'Invierte en su entrenamiento:' , description: 'Las clases para las mascotas benefician al dueño antes que a nadie, pues le otorgan el control tanto para situaciones básicas, como soltar algo que tenga en la boca que no deba masticar, o quedarse tranquilo, o incluso en ocasiones que se presenten.', category_id: @Categorie4.id )
Tipe.create( name: 'Tómate un tiempo para revisar sus dientes:' , description: 'Un cuidado dental adecuado puede reducir el “aliento de perro”. Puedes ayudarte de cepillos viejos, cepillos de dedo, cepillos para la lengua, aditivos para el agua, gomas de mascar… y por supuesto visitas al veterinario para revisiones y limpiezas periódicas.', category_id: @Categorie4.id )
Tipe.create( name: 'Agenda visitas al médico: ' , description: 'Una revisión periódica no le hace daño a nadie. ', category_id: @Categorie4.id )
Tipe.create( name: ' Mantenlos hidratados:' , description: 'Las infecciones en las vías urinarias son una de las enfermedades más comunes y son prevenibles. Sólo asegúrate que tus mascotas siempre tienen agua limpia y fresca a su alcance. Cámbiales el agua y lava sus platos regularmente.', category_id: @Categorie4.id )
Tipe.create( name: 'Protégelos de las pulgas:' , description: 'En verano o en invierno, hay que mantenerlos protegidos de las pulgas. Incluso en los meses más fríos hay que rociarlos con un polvo antipulgas.', category_id: @Categorie4.id )



puts 'Tipes de Adiestramiento'
Tipe.create( name: 'La paciencia, ¡la clave!:' , description: '¡Recuerda! El proceso de aprendizaje avanzará poco a poco. Por lo que ¡no desesperes si tu mascota no te hace caso las primeras veces!
Intenta ir enseñándole regla por regla, para que las vaya asimilando.', category_id: @Categorie5.id )
Tipe.create( name: 'Sé constante:' , description: '¡Repite una y otra y otra vez el entrenamiento! Y lo más importante, ¡no te desanimes si no avanza tan rápido como te gustaría!.', category_id: @Categorie5.id )
Tipe.create( name: 'Sé claro:' , description: 'Para que tu mascota te entienda, utiliza pocas palabras (y mejor que sean cortas). Por ejemplo: 1) Ven, 2) Sientate o Sit 3) Echate 4) Quieto.', category_id: @Categorie5.id )
Tipe.create( name: 'Sé coherente: ' , description: 'Para una orden, utiliza siempre el mismo término. Y también recuerda, lo que hoy permitiste, ¡no puedes prohibirlo mañana! De lo contrario, ¡le estarías confundiendo!. ', category_id: @Categorie5.id )
Tipe.create( name: ' Hablar en familia:' , description: 'Antes de dar el paso y educar a vuestra mascota, ¡poneros de acuerdo toda la familia! Si vais a enseñarle ordenes, ¡poneros de acuerdo en las palabras que vais a utilizar!
No estaría de más que fijaseis lo que vais a permitir y prohibir. De esta manera, ¡no habrá confusiones a la hora de educarle!.', category_id: @Categorie5.id )
Tipe.create( name: 'Los premios, ¡ese gran aliado!:' , description: 'En Pabigo, somos fieles defensores del refuerzo positivo, por lo que cada vez que tu perro haga algo bien, dale una caricia, halago, o ¡una golosina! Recuerda nuestro post sobre los premios y los castigos para nuestra mascota.', category_id: @Categorie5.id )



puts 'Tips de Cuidado de Cachorros'
Tipe.create( name: 'Procura tener un ambiente seguro:' , description: 'evita totalmente tener cosas peligrosas como:
-Plantas peligrosas para ellos como: lirios, trébol, dedalera, tejo, ruibarbo…
-Enchufes, cables alcanzables y demás enredos', category_id: @Categorie6.id )
Tipe.create( name: 'Escoge veterinario y llévalo por primera vez:' , description: 'te recetará el medicamento para desparasitarlo y te dirá cuándo debes vacunarlo por primera vez y las próximas.', category_id: @Categorie6.id )
Tipe.create( name: 'Adiestrarlo desde cachorro es lo mejor:' , description: 'compensarlo con premios, elogios o caricias cuando hace algo bien, y cuando hace algo mal decirle en tono fuerte palabras como ”NO” o ”MAL” cosas que él asocie que no está bien.  Dedícale tiempo y juega con él cada día.', category_id: @Categorie6.id )
Tipe.create( name: 'Es bueno limpiarles los ojitos: ' , description: 'con un disco desmaquillante de algodón empapado en agua o manzanilla tibia tanto si tienen lagañas como si no ', category_id: @Categorie6.id )
Tipe.create( name: ' Debemos darles raciones pequeñas de comida:' , description: 'y dependiendo su edad:
-Si tiene entre 6 y 8 semanas – 4 veces por día
-Si tiene de 12 a 20 semanas – 3 veces por día
-Si tiene 20 o más semanas – 2 veces por día', category_id: @Categorie6.id )
Tipe.create( name: 'Kit de limpieza:' , description: 'cepillo de cerdas, toallas, champú para perros…etc..', category_id: @Categorie6.id )


# puts 'Hogares temporales'
# @temporal_home = TemporalHome.create(id_card:'18223366', dog: true, pet_characteristics: "todo tipo de mascota", home_type: "Casa", existing_pets:"no", kind_of_help: "Hospedaje, comida y medicinas", protection_duration: "2019-02-02", reference_full_name: "pedro", reference_phone: "123456789", reference_id_card: "", user_id: 5, approved: true )
# @temporal_home = TemporalHome.create(id_card:'17623366', dog: true, pet_characteristics: "todo tipo de mascota", home_type: "Casa", existing_pets:"no", kind_of_help: "Hospedaje, comida y medicinas", protection_duration: "2019-02-02", reference_full_name: "carla", reference_phone: "123456789", reference_id_card: "", user_id: 6, approved: true )
# @temporal_home = TemporalHome.create(id_card:'18285066', dog: true, pet_characteristics: "todo tipo de mascota", home_type: "Casa", existing_pets:"no", kind_of_help: "Hospedaje, comida y medicinas", protection_duration: "2019-02-02", reference_full_name: "sandra", reference_phone: "123456789", reference_id_card: "", user_id: 7, approved: true )
# @temporal_home = TemporalHome.create(id_card:'19643366', dog: true, pet_characteristics: "todo tipo de mascota", home_type: "Casa", existing_pets:"no", kind_of_help: "Hospedaje, comida y medicinas", protection_duration: "2019-02-02", reference_full_name: "elena", reference_phone: "123456789", reference_id_card: "", user_id: 8, approved: true )
# @temporal_home = TemporalHome.create(id_card:'19064566', dog: true, pet_characteristics: "todo tipo de mascota", home_type: "Casa", existing_pets:"no", kind_of_help: "Hospedaje, comida y medicinas", protection_duration: "2019-02-02", reference_full_name: "jose", reference_phone: "123456789", reference_id_card: "", user_id: 9, approved: true )
# @temporal_home = TemporalHome.create(id_card:'17220366', dog: true, pet_characteristics: "todo tipo de mascota", home_type: "Casa", existing_pets:"no", kind_of_help: "Hospedaje, comida y medicinas", protection_duration: "2019-02-02", reference_full_name: "maria", reference_phone: "123456789", reference_id_card: "", user_id: 10, approved: true )


# puts 'Feedbacks'
# @feedback = Feedback.create(points: '5', comment: 'excelente trato y muy buenas condicione de alojamiento', user_id: 2, temporal_homes_id: 1 )
# @feedback = Feedback.create(points: '3', comment: 'buen trato pero no son las mas buenas condiciones', user_id: 3, temporal_homes_id: 2 )
# @feedback = Feedback.create(points: '2', comment: 'el trato es regular como sus alojamiento', user_id: 4, temporal_homes_id: 3 )
# @feedback = Feedback.create(points: '0', comment: 'el trato es grosero y sus instalaciones son malas', user_id: 5, temporal_homes_id: 4 )
# @feedback = Feedback.create(points: '1', comment: 'su trato es bueno pero su vivienda esta en condiciones precarias', user_id: 6, temporal_homes_id: 5 )
# @feedback = Feedback.create(points: '4', comment: 'el alojamiento es acceptable como su personal ', user_id: 7, temporal_homes_id: 6 )
