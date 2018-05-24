#
# INGREDIENT
# Build the following methods on the Ingredient class
#
# Ingredient.all should return all of the ingredient instances
# Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to
class Ingredient

  @@all =[]
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    tally = Hash.new
    Allergen.all.each do |allergen|
      if !tally.include?("#{allergen.user}")
        tally["#{allergen.user}"] = 1
      else
        tally["#{allergen.user}"] += 1
      end
    end
    tally.sort_by do |user, count|
      count
    end.reverse[0]
  end

end
