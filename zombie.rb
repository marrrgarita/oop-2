class Zombie
  @@horde = [] #will contain array of zombies
  @@plague_level = 10 #will increase
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  attr_reader :speed, :strength
################ CLASS METHODS
  def self.all

  end

  def self.new_day

  end

  def self.some_die_off

  end

  def self.spawn

  end

  def self.increase_plague_level

  end
################ INSTANCE METHODS

  def initialize(speed, strength)
    if speed > @@max_speed
      @speed = @@default_speed
    else
      @speed = speed
    end

    if strength > @@max_strength
      @strength = @@default_strength
    else
      @strength = strength
    end
  end

  def encounter

  end

  def outrun_zombie?

  end

  def survive_attack?

  end

end
