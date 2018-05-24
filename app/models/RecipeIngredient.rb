class RecipeIngredient
  attr_accessor
  attr_reader :recipe, :ingredient
  @@all = []
  def initialize recipe, ingredient
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end
  def self.all
    @@all
  end

end
