# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "start"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

array_of_hash = ingredient["drinks"]
 array_of_hash.each do |element|
  Ingredient.create(name:element["strIngredient1"])
end
puts "finish"

# puts "#{ingredient["drinks"].first["strIngredient1"]}"

# array
mojito = Cocktail.create(name:"Mojito")
sex_on_the_beach = Cocktail.create(name:"Sex on the beach")


# dose_rhum_for_mojito = Dose.create(description: "6cl", cocktail_id: mojito.id, ingredient_id: Ingredient.first.id )
