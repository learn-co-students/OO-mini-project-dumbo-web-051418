class Recipe
  attr_accessor :name
  attr_reader
  @@all = []
  def initialize name
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.most_popular
    #returns the recipe instance with the most users
    Recipe.all.max_by { |recipe| recipe.users.length }
  end
  def recipecard
    #returns RecipeCards for recipe instance
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end
  def users
    # returns the user instances who have recipe cards with this recipe
      self.recipecard.map { |recipecard| recipecard.user}.compact
  end
  def ingredients
    #return all of the ingredients in this recipe
    RecipeIngredient.all.map do |recipeingredient|
      if recipeingredient.recipe == self
        recipeingredient.ingredient
      end
    end.compact
  end
  def allergens
    #return all of the ingredients in this recipe that are allergens
    #check the ingredients of this recipe
    #and then match it against known allergens
    self.ingredients & Allergen.all.map {|allergen| allergen.ingredient}
  end
  def add_ingredients(array_of_ingredients)
    #take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    array_of_ingredients.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

end
