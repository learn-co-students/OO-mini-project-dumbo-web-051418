require_relative '../config/environment.rb'

flour=Ingredient.new("flour")
butter=Ingredient.new("butter")
frosting=Ingredient.new("frosting")
crust=Ingredient.new("crust")

cake=Recipe.new("cake", flour)
croissant=Recipe.new("croissant", butter)
cupcake=Recipe.new("cupcake", frosting)
pie=Recipe.new("pie", crust)

flour_allergy=Allergen.new(flour)
crust_allergy=Allergen.new(crust)

recing1 = RecipeIngredient.new(cake, flour)
recing2 = RecipeIngredient.new(croissant, butter)
recing3 = RecipeIngredient.new(cupcake, frosting)
recing4 = RecipeIngredient.new(pie, crust)

malorie=User.new("malorie")
jee=User.new("jee")
paul = User.new("paul")


cake_card=RecipeCard.new("2018", 10, malorie, cake )
croissant_card=RecipeCard.new("2000",9,malorie, croissant)
cupcake_card=RecipeCard.new("2018", 8, malorie, cupcake )
pie_card=RecipeCard.new("2000",6,jee, pie)
croissant_card=RecipeCard.new("2018", 10, jee, croissant )





binding.pry
