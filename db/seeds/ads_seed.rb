ad1 = Ad.create({
   title: "Purina",
   descripcion: "Comida organica",
   user_id:"1",    
   image_attributes: {  
             picture:File.open('db/images/banner1.jpg'),
             name:"https://www.zooplus.es/shop/tienda_gatos"             
        }

})
ad1.save!

ad2 = Ad.create({
    title: "Whimzees",
    descripcion: "Comida organica",
    user_id:"1",    
    image_attributes: {  
              picture:File.open('db/images/banner2.png'),
              name:"http://petindustry.co/productos-servicios/purina-dog-chow-cachorritas/"             
         }
 
 })
 ad2.save!
 
ad3 = Ad.create({
    title: "Boutique",
    descripcion: "Boutique de mascotas",
    user_id:"1",    
    image_attributes: {  
              picture:File.open('db/images/banner3.png'),
              name:"www.petscorner.es"             
         }
 
 })
 ad3.save! 

 ad4 = Ad.create({
    title: "Info mascota",
    descripcion: "Informacion de mascotas",
    user_id:"1",    
    image_attributes: {  
              picture:File.open('db/images/banner4.jpeg'),
              name:"www.infomascotas.com"             
         }
 
 })
 ad4.save! 

 ad5 = Ad.create({
    title: "Royal canin",
    descripcion: "Comida de perros",
    user_id:"1",    
    image_attributes: {  
              picture:File.open('db/images/banner5.png'),
              name:"www.royalcanin.com"             
         }
 
 })
 ad5.save!  