class Vampire

  @@coven

  def self.create(name, age)
    new_vampire = new(name, age)
    @@coven << new_vampire
    new_vampire
  end

  def initialize(name, age)
    @name = name
    @age = age
    @in_coffin = false
    @drank_blood_today = false
  end



end
