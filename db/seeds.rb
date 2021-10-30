# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Categorium.create([{
  nombre: "Panes",
  imagen: "https://i.imgur.com/Z7mMWrM.jpg"
  }, {
  nombre: "Pasteles",
  imagen: "https://i.imgur.com/Z7mMWrM.jpg" 
  }, {
  nombre: "Servicios",
  imagen: "https://i.imgur.com/Z7mMWrM.jpg"
}])

Producto.create([{
  nombre: "Integrales",
  descripcion: "semilla de calabaza",
  imagen: "i.imgur.com/Z7mMWrM.jpg", 
  precio: 12,
  categorium_id: Categorium.first.id 
  }, 
  { 
  nombre: "Centeno",
  descripcion: "cebolla caramelizada",
  imagen: "i.imgur.com/Z7mMWrM.jpg", 
  precio: 15,
  categorium_id: Categorium.where(nombre: "Panes").first.id 
  },
  { 
  nombre: "Tapaditos",
  descripcion: "para coctel",
  imagen: "i.imgur.com/Z7mMWrM.jpg", 
  precio: 45,
  categorium_id: Categorium.where(nombre: "Servicios").first.id 
  }, 
  {
  nombre: "Pastel Chocolate",
  descripcion: "60 % de cacao",
  imagen: "https://i.imgur.com/Z7mMWrM.jpg", 
  precio: 25,
  categorium_id: Categorium.last.id   
}])