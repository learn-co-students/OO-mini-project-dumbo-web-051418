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
    count_hash = Hash.new(0)
    Allergen.all.each do |allergen_instance|
      count_hash[allergen_instance.ingredient] +=1
    end
    count_hash.max_by {|k,v| v}[0]

  end
end
