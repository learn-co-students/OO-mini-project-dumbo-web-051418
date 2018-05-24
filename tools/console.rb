require_relative '../config/environment.rb'

user = User.new("Pablo", 21)
user2 = User.new("Jathmel", 25)
user3 = User.new("Patrick", 34)

recipe = Recipe.new("Chicken")
recipe2 = Recipe.new("Steamed Pork")
recipe3 = Recipe.new("goat")
recipe4 = Recipe.new("chicken pram")
recipe6 = Recipe.new("peas and rice")
recipe5 = Recipe.new("fish with shrimp")

user.add_recipe_card(recipe, 4.5)
user2.add_recipe_card(recipe3, 3)
user2.add_recipe_card(recipe5, 3.5)
user2.add_recipe_card(recipe6, 1.5)
user2.add_recipe_card(recipe2, 5)
user2.add_recipe_card(recipe2, 4.5)


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
recipe5.add_ingredients([cheese, butter, tomato])

user2.declare_allergen(peanut)
user.declare_allergen(shrimp)
user3.declare_allergen(peanut)



binding.pry
