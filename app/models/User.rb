class User
  attr_accessor
  attr_reader
  @@all = []
  def initialize name
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def recipes
    #return all of the recipes this user has recipe cards for
    RecipeCard.all.map do |recipecard|
      if recipecard.user == self
        recipecard.recipe
      end
    end.compact
  end
  def add_recipe_card(recipe, date, rating)
    #create a new recipe card for this user and the given recipe
    RecipeCard.new(self,recipe,date,rating)
  end
  def declare_allergen(name,ingredient)
    #create a new allergen instance for this user and the given ingredient
    Allergen.new(name,ingredient,self)
  end
  def allergens
    #return all of the ingredients this user is allergic to
    Allergen.all.map do |allergen|
      if allergen.user == self
        allergen.ingredient
      end
    end.compact
  end
  def recipecards
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end
  def top_three_recipes
    #return the top three highest rated recipes for this user
    self.recipecards.sort do |recipecard1, recipecard2|
        recipecard2.rating <=> recipecard1.rating
    end.take(3)
  end
  def most_recent_recipe
    # return the recipe most recently added to the user's cookbook
    self.recipecards.each do |rc|
      rc.date.split("-")
      puts (date[0].to_i),  date[1].to_i, (date[2].to_i )
    end

  end
end
