#
# INGREDIENT
# Build the following methods on the Ingredient class
#
# Ingredient.all should return all of the ingredient instances
# Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to
class Ingredient

  @@all =[]
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
