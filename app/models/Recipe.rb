class Recipe
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    # hould return all of the recipe instances
    @@all
  end

  def self.most_popular
    # should return the recipe instance with the highest number of
    # users (the recipe that has the most recipe cards)
  end

  def users
    # should return the user instances who have recipe cards with this recipe
    self.recipe_cards.map {|rc| rc.user }
  end

  def ingredients
    self.recipe_ingredients.map {|r_i| r_i.ingredient }
  end

  def allergens
    # should return all of the ingredients in this recipe that are allergens
  end

  def add_ingredients(ingredients)
    ingredients.each { |ingredient|
      RecipeIngredient.new(self, ingredient)
    }
  end

  # Helper Methods
  def recipe_cards
    # Returns all the RecipeCards for the instance of Recipe
    RecipeCard.all.select {|rc| rc.recipe == self }
  end

  def recipe_ingredients
    RecipeIngredient.all.select {|r_i| r_i.recipe == self }
  end


end
