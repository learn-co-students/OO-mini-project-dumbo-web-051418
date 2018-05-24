class Ingredient
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    self.all.sort_by {|ingredient| ingredient.allergens.count }.last
  end

  def allergens
    Allergen.all.select {|allergen| allergen.ingredient == self }
  end

  def self.all
    @@all
  end
end
