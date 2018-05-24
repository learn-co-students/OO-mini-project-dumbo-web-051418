require_relative '../config/environment.rb'


r1 = Recipe.new("r1")
r2 = Recipe.new("r2")
r3 = Recipe.new("r3")
r4 = Recipe.new("r4")
r5 = Recipe.new("r5")

u1 = User.new("u1")
u2 = User.new("u2")
u3 = User.new("u3")
u4 = User.new("u4")

i1 = Ingredient.new
i2 = Ingredient.new
i3 = Ingredient.new
i4 = Ingredient.new
i5 = Ingredient.new

a2_1 = Allergen.new(u2, i1)
a2_2 = Allergen.new(u2, i2)
a2_3 = Allergen.new(u2, i3)
a3_1 = Allergen.new(u3, i1)
a4_1 = Allergen.new(u4, i1)

rc1_1 = RecipeCard.new(u1, r1, Date.new(2018,05,01), 5)
rc1_2 = RecipeCard.new(u1, r2, Date.new(2018,05,03), 4)

rc2_2 = RecipeCard.new(u2, r2, Date.new(2018,05,12), 3)
rc2_3 = RecipeCard.new(u2, r3, Date.new(2018,05,17), 2)
rc2_4 = RecipeCard.new(u2, r4, Date.new(2018,05,11), 1)
rc1_3 = RecipeCard.new(u1, r3, Date.new(2018,05,23), 3)
rc1_4 = RecipeCard.new(u1, r4, Date.new(2018,05,13), 2)
rc1_5 = RecipeCard.new(u1, r5, Date.new(2018,05,15), 1)


binding.pry
