class State < ApplicationRecord
  has_many :cities, dependent: :destroy
	# accepts_nested_attributes_for :cities

  STATES_AND_CITIES = [
    ['Miranda', [
      'Caracas',
      'Santa Teresa del Tuy',
      'Los Teques',
      'Guarenas',
      'Guatire',
      'Ocumare del Tuy',
      'Cúa',
      'Charallave',
      'Santa Lucía',
      'San Antonio de los Altos'
    ]],
    ['Zulia', [
      'Maracaibo',
      'Cabimas',
      'Ciudad Ojeda',
      'Machiques',
      'Santa Bárbara del Zulia',
      'Santa Rita',
      'Caja Seca'
    ]],
    ['Carabobo', [
      'Valencia',
      'Puerto Cabello',
      'Tocuyito',
      'Guacara',
      'Los Guayos',
      'Mariara',
      'Güigüe',
      'San Joaquín',
      'Morón'
    ]],
    ['Lara', [
      'Barquisimeto',
      'Carora',
      'Quíbor',
      'Cabudare'
    ]],
    ['Bolívar', [
      'Ciudad Guayana',
      'Ciudad Bolívar',
      'Upata',
      'Tumeremo',
      'Caicara del Orinoco'
    ]],
    ['Aragua', [
      'Maracay',
      'Turmero',
      'La Victoria',
      'Santa Rita',
      'Palo Negro',
      'Villa de Cura',
      'Cagua',
      'El Limón'
    ]],
    ['Vargas', [
      'Catia La Mar',
      'La Guaira',
      'Maiquetía'
    ]],
    ['Táchira', [
      'San Cristóbal',
      'Táriba',
      'Rubio',
      'La Grita',
      'San Juan de Colón'
    ]],
    ['Anzoátegui', [
      'Barcelona',
      'Puerto La Cruz',
      'El Tigre',
      'Anaco',
      'Puerto Píritu',
      'Punta de Mata',
      'Cantaura',
      'San José de Guanipa',
      'Lechería',
      'Guanta',
      'Pariaguán'
    ]],
    ['Monagas', [
      'Maturín'
    ]],
    ['Barinas', [
      'Barinas',
      'Socopó'
    ]],
    ['Sucre', [
      'Cumaná',
      'Carúpano'
    ]],
    ['Falcón', [
      'Punto Fijo',
      'Coro'
    ]],
    ['Mérida', [
      'El Vigía',
      'Ejido'
    ]],
    ['Trujillo', [
      'Trujillo',
      'Valera',
      'Boconó'
    ]],
    ['Portuguesa', [
      'Acarigua',
      'Guanare',
      'Araure'
    ]],
    ['Apure', [
      'San Fernando de Apure',
      'Guasdualito',
      'Achaguas',
      'Biruaca'
    ]],
    ['Guárico', [
      'San Juan de Los Morros',
      'Calabozo',
      'Valle de La Pascua',
      'Zaraza'
    ]],
    ['Yaracuy', [
      'San Felipe',
      'Yaritagua',
      'Chivacoa',
      'Nirgua'
    ]],
    ['Cojedes', [
      'San Carlos',
      'Tinaquillo'
    ]],
    ['Amazonas', [
      'Puerto Ayacucho'
    ]],
    ['Nueva Esparta', [
      'Porlamar',
      'La Asunción'
    ]]
  ]
end
