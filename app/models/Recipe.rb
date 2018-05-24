# RECIPE
# Build the following methods on the Recipe class
#
### Recipe.all should return all of the recipe instances
# Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
#### Recipe#users should return the user instances who have recipe cards with this recipe
# Recipe#ingredients should return all of the ingredients in this recipe
# Recipe#allergens should return all of the ingredients in this recipe that are allergens
# Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

class Recipe
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def users
    Users.all.select do |user|
      user == self
    end
  end

  def self.most_popular
    #should return the recipe instance with the highest number of users
    #(the recipe that has the most recipe cards)
    tally = Hash.new
    RecipeCard.all.each do |rc|
      if !tally.include?(rc.user)
        tally["#{rc.user}"] = 1
      else
        tally["#{rc.user}"] += 1
      end
    end
    tally.sort_by do |row|
      row.value

    end.reverse[0]
  end

end
