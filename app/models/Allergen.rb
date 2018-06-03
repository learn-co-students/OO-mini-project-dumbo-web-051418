class Allergen
  attr_accessor :name, :ingredient, :user
  attr_reader
  @@all = []
  def initialize name, ingredient, user
    @allergen_name = name
    @ingredient = ingredient
    @user = user 
    @@all << self
  end
  def self.all
    @@all
  end
end
