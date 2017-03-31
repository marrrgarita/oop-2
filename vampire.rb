class Vampire

  @@coven = []

  attr_reader :drank_blood_today, :in_coffin

#####CLASS METHODS

  def self.create(name, age)
    new_vampire = new(name, age)
    @@coven << new_vampire
    new_vampire
  end

  # def self.sunrise
  #   @@coven.delete_if{|vampire| vampire.drank_blood_today == false}
  # end

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

  def go_home
    @in_coffin = true
  end




end