class User
  attr_accessor :name, :age
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    self.recipe_cards.collect { |rc| rc.recipe }
  end

  def add_recipe_card(recipe, rating)
    RecipeCard.new(self, recipe, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    self.user_allergens.collect {|allergen| allergen.ingredient}
  end

  def top_three_recipes
    self.recipe_cards.sort_by {|rc| rc.rating}.reverse[0, 3]
  end

  def most_recent_recipe
    self.recipes.last
  end


  #Helpers Methods
  def recipe_cards
    RecipeCard.all.select { |rc| rc.user == self }
  end

  def user_allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end



end
