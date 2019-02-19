# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting datas...'
  User.destroy_all
# Dose.destroy_all
# Ingredient.destroy_all
# Instruction.destroy_all
# Recipe.destroy_all
puts 'Datas deleted'

puts 'Creating ingredients...'
Ingredient.create(name: "sucre cristallisé")
Ingredient.create(name: "farine")
Ingredient.create(name: "beurre")
Ingredient.create(name: "lait")
Ingredient.create(name: "chocolat")
Ingredient.create(name: "poudre d'amande")
Ingredient.create(name: "fécule")
Ingredient.create(name: "levure chimique")
Ingredient.create(name: "vanille")
Ingredient.create(name: "oeuf")
Ingredient.create(name: "citron")
Ingredient.create(name: "rhum")
Ingredient.create(name: "eau")
Ingredient.create(name: "raisin de corinthe")
Ingredient.create(name: "pomme")
Ingredient.create(name: "poire")
Ingredient.create(name: "cerise")
Ingredient.create(name: "myrtille")
Ingredient.create(name: "abricot")
Ingredient.create(name: "kiwy")
Ingredient.create(name: "orange")
Ingredient.create(name: "pâte brisée")
Ingredient.create(name: "pâte sablée")
Ingredient.create(name: "pâte feuilletée")
Ingredient.create(name: "sucre vanillé")
Ingredient.create(name: "huile d'arachide")
Ingredient.create(name: "huile d'olive")
Ingredient.create(name: "gelatine")
Ingredient.create(name: "sirop d'agave")
Ingredient.create(name: "agar agar")
Ingredient.create(name: "miel")
Ingredient.create(name: "amande effilée")
Ingredient.create(name: "noisette")
Ingredient.create(name: "poudre de noisettes")
Ingredient.create(name: "lait de coco")
Ingredient.create(name: "poudre de coco")
Ingredient.create(name: "crème fraiche")
Ingredient.create(name: "rhum brun")
Ingredient.create(name: "kirsch")
Ingredient.create(name: "maizena")
Ingredient.create(name: "cacao")
Ingredient.create(name: "sucre glace")
Ingredient.create(name: "sucre en morceau")
Ingredient.create(name: "pépite de chocolat")
Ingredient.create(name: "liqueur d'orange")
Ingredient.create(name: "marron")
Ingredient.create(name: "crème de marron")
Ingredient.create(name: "crème chantilly")
Ingredient.create(name: "liqueur de café")
Ingredient.create(name: "café")
Ingredient.create(name: "caramel")
Ingredient.create(name: "zeste d'orange")
Ingredient.create(name: "pamplemousse")
Ingredient.create(name: "zeste de citron")
Ingredient.create(name: "raisin")
Ingredient.create(name: "raisin secs")
Ingredient.create(name: "fraise")
Ingredient.create(name: "groseille")
Ingredient.create(name: "rhubarbe")
Ingredient.create(name: "cassis")
Ingredient.create(name: "framboise")
Ingredient.create(name: "airelle")
Ingredient.create(name: "cannelle")
Ingredient.create(name: "sucre roux")
Ingredient.create(name: "jaune d'oeuf")
Ingredient.create(name: "blanc d'oeuf")

puts "#{Ingredient.count} ingredients created"

User.create(email: "manon.alzbeta@icloud.com", password:"Manon2008", password_confirmation:"Manon2008")
User.create(email: "mido.arnaud@free.fr", password:"Mido4748", password_confirmation:"Mido4748")

puts "#{User.count} users created"
puts 'Finished!'
