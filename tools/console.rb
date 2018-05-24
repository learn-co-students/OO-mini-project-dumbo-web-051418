require_relative '../config/environment.rb'

user = User.new("Pablo", 21)
user2 = User.new("Jathmel", 25)

recipe = Recipe.new("Chicken")
recipe2 = Recipe.new("Steamed Pork")

rc = RecipeCard.new(user, recipe2, 4.5)

flour = Ingredient.new("flour")
peas = Ingredient.new("peas")
carrots = Ingredient.new("carrots")
chicken = Ingredient.new("chicken")
pork = Ingredient.new("pork")
cheese = Ingredient.new("cheese")
butter = Ingredient.new("butter")
tomato = Ingredient.new("tomato")
garlic = Ingredient.new("garlic")
pepper = Ingredient.new("pepper")
peanut = Ingredient.new("peanut")
shrimp = Ingredient.new("shrimp")

recipe.add_ingredients([peanut, shrimp, pepper])

a = Allergen.new(user2, peanut)
b = Allergen.new(user2,shrimp)

binding.pry
