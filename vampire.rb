class Vampire

  @@coven = []

#####CLASS METHODS

  def self.create(name, age)
    new_vampire = new(name, age)
    @@coven << new_vampire
    new_vampire
  end

  def self.coven
    @@coven
  end

######INSTANCE METHODS

  def initialize(name, age)
    @name = name
    @age = age
    @in_coffin = false
    @drank_blood_today = false
  end

  def drink_blood
    @drank_blood_today = true
  end
  



end
