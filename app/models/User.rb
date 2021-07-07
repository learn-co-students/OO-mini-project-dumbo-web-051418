

class User

  attr_reader :name
  attr_accessor :recipe_card, :allergen


  @@all = []
  def initialize(name)
    @allergen = []
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end

  def add_recipe_card(recipe, date, rating)
    new_recipe_card = RecipeCard.new(date, rating, self, recipe)
  end

  def top_three_recipes
    hash = Hash.new(0)

    self.recipes.each do |recipe|
      hash[recipe] = recipe.rating
    end
    hash.sort_by {|k,v| v}[-3..-1].reverse
  end

  def most_recent_recipe
    self.recipes[-1]
  end

  def declare_allergen(ingredient)
    new_allergen = Allergen.new(ingredient)
    @allergen << new_allergen
  end

end
