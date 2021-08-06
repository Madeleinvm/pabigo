siames = Race.new({
  name: "Siames",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "5",
  docility: "5",
  bustling: "6",
  playful: "6",
  grooming: "6",
  hair_loosner: "6",
  kids: "7",
  species: "Gato"
  })



i = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/siames.png').open,
  imageable_type: "Pet",
  imageable_id: siames.id
})

siames.image = i

siames.save!


ruso = Race.new({
  name: "Ruso Azul",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "1",
  docility: "2",
  bustling: "3",
  playful: "0",
  grooming: "6",
  hair_loosner: "6",
  kids: "9",
  species: "Gato"
})

q = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/azulRuso.png').open,
  imageable_type: "Pet",
  imageable_id: ruso.id
})

ruso.image = q

ruso.save!



fold = Race.new({
  name: "Scottish Fold",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "4,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "1",
  docility: "2",
  bustling: "1",
  playful: "4",
  grooming: "6",
  hair_loosner: "6",
  kids: "3",
  species: "Gato"
})


w = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/scottishFold.png').open,
  imageable_type: "Pet",
  imageable_id: fold.id
})

fold.image = w

fold.save!



bengala = Race.new({
  name: "Bengala",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "5,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "1",
  docility: "2",
  bustling: "3",
  playful: "4",
  grooming: "6",
  hair_loosner: "10",
  kids: "10",
  species: "Gato"
})

y = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/bengala.png').open,
  imageable_type: "Pet",
  imageable_id: bengala.id
})

bengala.image = y

bengala.save!



ragdoll = Race.new({
  name: "Ragdoll",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "1",
  docility: "2",
  bustling: "2",
  playful: "4",
  grooming: "8",
  hair_loosner: "6",
  kids: "7",
  species: "Gato"
})

o = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/bengala.png').open,
  imageable_type: "Pet",
  imageable_id: ragdoll.id
})

ragdoll.image = o
ragdoll.save!




#Perros


akita = Race.new({
  name: "Akita",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "5",
  docility: "5",
  bustling: "2",
  playful: "6",
  grooming: "6",
  hair_loosner: "6",
  kids: "6",
  species: "Perro"
})
g = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/akita.png').open,
  imageable_type: "Pet",
  imageable_id: akita.id
})

akita.image = g
akita.save!




beagle = Race.new({
  name: "Beagle",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "1",
  docility: "2",
  bustling: "3",
  playful: "8",
  grooming: "6",
  hair_loosner: "6",
  kids: "10",
  species: "Perro"
})

m = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/beagle.png').open,
  imageable_type: "Pet",
  imageable_id: beagle.id
})

beagle.image = m
beagle.save!




husky = Race.new({
  name: "Husky Siberiano",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "10",
  docility: "2",
  bustling: "3",
  playful: "5",
  grooming: "6",
  hair_loosner: "6",
  kids: "10",
  species: "Perro"
})

n = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/husky.png').open,
  imageable_type: "Pet",
  imageable_id: husky.id
})

husky.image = n

husky.save!



pug = Race.new({
  name: "Pug",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "5",
  docility: "5",
  bustling: "3",
  playful: "4",
  grooming: "10",
  hair_loosner: "6",
  kids: "7",
  species: "Perro"
})

h = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/pug.png').open,
  imageable_type: "Pet",
  imageable_id: pug.id
})

pug.image = h
pug.save!


doberman = Race.new({
  name: "Doberman",
  created_at: "2038-01-19T03:14:07.000Z",
  updated_at: "2038-01-19T03:14:07.000Z",
  height: "2,7",
  weight: "2,7",
  fur: "Corto",
  physical_details: "asdasd",
  character: "the quick brown fox jumps over the lazy dog",
  care: "the quick brown fox jumps over the lazy dog",
  health: "the quick brown fox jumps over the lazy dog",
  story: "the quick brown fox jumps over the lazy dog",
  color: "asdasd",
  affectivity: "10",
  docility: "8",
  bustling: "7",
  playful: "4",
  grooming: "6",
  hair_loosner: "7",
  kids: "7",
  species: "Perro"
})

f = Image.new({
  name: "foto",
  picture: Pathname.new('db/images/doberman.png').open,
  imageable_type: "Pet",
  imageable_id: doberman.id
})

doberman.image = f
doberman.save!




p "Created #{Race.count} races"