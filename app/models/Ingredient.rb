class Ingredient
  attr_accessor
  attr_reader
  @@all = []
  def initialize name
    @ingredient_name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.most_common_allergen
    #return the ingredient instance that the highest number of users are allergic to
  end
end
