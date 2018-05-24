require_relative '../config/environment.rb'

user = User.new("Pablo", 21)
user2 = User.new("Jathmel", 25)

recipe = Recipe.new("Chicken")
recipe2 = Recipe.new("Steamed Pork")

rc = RecipeCard.new(user, recipe2, 4.5)

in2 = Ingredient.new("flour")
in1 = Ingredient.new("peas")
in3 = Ingredient.new("carrots")

recipe.add_ingredients([in1, in2, in3])

a = Allergen.new(user2, in2)

binding.pry
