require_relative '../config/environment.rb'

sammy = User.new("Sammy")
paul = User.new("Paul")
jee = User.new("Jee")
malorie = User.new("Malorie")


tomato = Ingredient.new("tomato")
potato = Ingredient.new("potato")
onion = Ingredient.new("onion")
salt = Ingredient.new("salt")
carrot = Ingredient.new("carrot")
beef = Ingredient.new("beef")
chicken = Ingredient.new("chicken")
peanut = Ingredient.new("peanut")
shrimp = Ingredient.new("shrimp")
milk = Ingredient.new("milk")

sammy.declare_allergen("Peepee",peanut)
paul.declare_allergen("shrimp",shrimp)
paul.declare_allergen("lactose",milk)
jee.declare_allergen("lactose", milk)
sammy.declare_allergen("lactose",milk)
malorie.declare_allergen("Peepee", peanut)

pauls_chicken_ingredients = [chicken, salt, potato, tomato]
sammys_ingredients = [onion, salt, peanut, shrimp]
sammys_soup_ingredients = [potato, salt, milk]

pauls_chicken = Recipe.new("Paul's Chicken")
sammys_shrimp = Recipe.new("Sammy's Shrimp")
sammys_chicken_satay = Recipe.new("Chicken Satay")
paulie_beefstew = Recipe.new("Paulie's Beefstew")
paulie_beefstew = Recipe.new("Paulie's Beefstew")
paulie_beefstew = Recipe.new("Paulie's Beefstew")
sammysoup = Recipe.new("Sammy Soup")

paul.add_recipe_card(pauls_chicken,"5-23-2018",5)
sammy.add_recipe_card(sammys_shrimp,"5-8-2018",1)
paul.add_recipe_card(paulie_beefstew,"5-23-2018",3)
sammy.add_recipe_card(sammys_chicken_satay,"5-10-2017",4)
jee.add_recipe_card(sammys_shrimp, "5-23-2018",2)
sammy.add_recipe_card(sammysoup, "5-9-2018", 5)

pauls_chicken.add_ingredients(pauls_chicken_ingredients)
sammys_shrimp.add_ingredients(sammys_ingredients)


binding.pry
