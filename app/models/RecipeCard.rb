class RecipeCard
  #stores recipes users save
  attr_accessor
  attr_reader :recipe, :user, :date, :rating
  @@all = []
  def initialize user, recipe, date, rating
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end
  def self.all
    @@all
  end
end
