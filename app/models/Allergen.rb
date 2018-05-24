class Allergen
  attr_reader :user, :ingredient

  @@all = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.is_allergen?(ingredient)
    self.all.map {|allergen| allergen.ingredient == ingredient}.include? true
  end

  def self.all
    @@all
  end
end
