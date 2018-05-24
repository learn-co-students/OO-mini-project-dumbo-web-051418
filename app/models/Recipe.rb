

class Recipe
  attr_reader :name
  attr_accessor :ingredient
  @@all=[]

  def initialize(name, ingredient)
    @name=name
    @ingredient=ingredient
    @ingredients_array = []
    @ingredients_array << ingredient

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    self.all.sort {|r1, r2| r2.users.count <=> r1.users.count}[0]
  end

  def users
    # RecipeCard.all.map do |recipe_card|
    #   if recipe_card.recipe == self
    #     recipe_card.user
    #   end
    # end.compact
    var = RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
    var.map do |recipe_card|
      recipe_card.user
    end
  end

  def add_ingredients(ingredients)
    ingredients.select do |ing|
      ing ==  self.ingredient
      end
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self.ingredient
    end
  end





end
