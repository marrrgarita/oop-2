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
    @@horde
  end

  def self.new_day
    self.spawn
    self.some_die_off
    self.increase_plague_level
  end

  def self.deadliest_zombie
    combo = []
    @@horde.map do |zombie|
        combo.push(zombie.speed + zombie.strength)
      end
      combo.max
  end

  def self.some_die_off
    rand(2).times do
      @@horde.pop
    end
  end

  def self.spawn
    x = rand(@@plague_level)
    x.times do
      speed = rand(@@max_speed)
      strength = rand(@@max_strength)
      z = Zombie.new(speed, strength)
      @@horde.push(z)
    end
  end

  def self.increase_plague_level
    @@plague_level += (rand(10) * @@horde.length)
    return @@plague_level
  end
################ INSTANCE METHODS

  def initialize(speed = @@default_speed, strength = @@default_strength)
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
    if outrun_zombie? == true && survive_attack? == true
      puts "You escaped!"
    elsif outrun_zombie? != true && survive_attack? == true
      @@horde << Zombie.new
      puts "You became a zombie!"
    else
      puts "You died!"
    end
  end

  def outrun_zombie?
    rand(@@max_speed) > @speed
  end

  def survive_attack?
    rand(@@max_strength) > @strength
  end

end

# puts Zombie.all.inspect # []
# Zombie.new_day
# puts Zombie.all.inspect # [#<Zombie:0x005626ecc5ebd0 @speed=4, @strength=0>, #<Zombie:0x005626ecc5eba8 @speed=0, @strength=4>, #<Zombie:0x005626ecc5eb80 @speed=4, @strength=4>]
# zombie1 = Zombie.all[0]
# zombie2 = Zombie.all[1]
# zombie3 = Zombie.all[2]
# puts zombie1.encounter # You are now a zombie
# puts zombie2.encounter # You died
# puts zombie3.encounter # You died
# Zombie.new_day
# puts Zombie.all.inspect # [#<Zombie:0x005626ecc5e1f8 @speed=0, @strength=0>, #<Zombie:0x005626ecc5e180 @speed=3, @strength=3>, #<Zombie:0x005626ecc5e158 @speed=1, @strength=2>, #<Zombie:0x005626ecc5e090 @speed=0, @strength=4>]
# zombie1 = Zombie.all[0]
# zombie2 = Zombie.all[1]
# zombie3 = Zombie.all[2]
# puts zombie1.encounter # You got away
# puts zombie2.encounter # You are now a zombie
# puts zombie3.encounter # You died
