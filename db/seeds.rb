# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Recipe.destroy_all

puts "Creating recipes..."

recipe_curry_chicken = { name: "Curry Chicken", description: "Madras curry powder based island stew with chicken, potatoes and carrots", rating: 10.0 }
recipe_egusi_soup = { name: "Egusi Soup", description: "Melon seed based stew with an assortment of meats and a spinach base", rating: 9.9 }
recipe_seafood_risotto = { name: "Seagfood Risotto", description: "Made with love from a person who cared", rating: 8.5 }
recipe_steak_and_kidney_pie = { name: "Steak and Kidney Pie", description: "Makes you proud to be British!", rating: 8.8 }

[ recipe_curry_chicken, recipe_egusi_soup, recipe_seafood_risotto, recipe_steak_and_kidney_pie ].each do |attributes|
    recipe = Recipe.create!(attributes)
    puts "Created #{recipe.name}"
end
puts "Finished!"
