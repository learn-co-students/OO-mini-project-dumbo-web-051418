class Ingredient
  attr_reader :name

  @@all=[] #array of all ingredients
  def initialize(name)
    @name=name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    #return ingredient that highest number of users are allergic to
    #ingredient people are most allergic to
    # self.all.sort {|r1, r2| r2.users.count <=> r1.users.count}[0]
    hash=Hash.new(0)
    User.all.each do |user|
      hash[user.allergen] += 1
    end
    hash.max_by {|k,v| v}
  end

end
