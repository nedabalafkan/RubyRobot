# Ruby robot simulation by Naida

#Robot requirements

require 'rrobots'
  include Battlefield
  prepend Robot
  include Explosion
  include Bullet
  include NervousDuck
  include NaidaRRobot


class NaidaRRobot
  attributes = [:turn_gun, :turn_radar, :time, :timeout, :accelerate, :speed, :fire, :power, :energy, :broadcast]


  class Battlefield
    attr_accessor :width, :height, :robots, :bullets, :explosions, :time, :timeout, :gameover

    def initialize (width,height,robots, bullets, explosions, time, timeout, gameover)
      @width = battlefield_width 160
      @height = battlefield_height 100
      @resoltion = [800,800]
      @robots = []
      @bullets = []
      @explosions = []
      @time = []
      @timeout = []
      @gameover = []

  class NervousDuck
    include Robot

    def tick events
      turn_radar 35 if time ==0
      turn_gun 25 if time <3
      accelaterate 2
      turn 2
      fire 4 unless events ['robot_scanned'].empty?
    end
  end


#defense mechanism use this to attack the enemy
class Attack
  def initialize(fire, speed,turn, explosion, dead, number_of_attacks)
    @fire = 2
    @speed = 4
    @turn = 5
    @explosion = true
    @dead = true
    @number_of_attacks +=1
  end
end

def Attack
if fire 2 && gun_heating 2
  Explosion = Explosion.new(@Battlefield, turn_gun 15,turn_radar 20 )
else if power 2
else turn_gun 20
end

def


# reaction to attacks
def Fire
  while Attack > 2
    return accelaterate 7     #react accordingly to the enemies movements
  else if Attack <2  # attacks are low change startegy
    return turn_gun 15     # change the postion of the gun to damage emenies robot by turning the gun
  else Turn
    return turn_radar 35 && turn_gun 15
  end
end

def Offense
  while fire 2
  turn_radar 45
  accelerate 1
  turn 5
  unless fire > 3
    turn_gun 3
  end
end

def Defense
  case defense
  when fire 3
    turn 25
    use_gun 15
  when Attacked
    turn_gun 30
  when hit Bullet
    initialize Explosion
  when speed < 0
    accelerate 4
  end
end


class Explosion < Attack
  attr_accessor  :x,:y, :t, :dead

  def initialize(x,y,t,dead) => Explosion
    @x = x
    @y = y
    @t = t
    @dead = true
  end

  def state
    :x=>x
    :y=>y
    :t=>t
  end

class Bullet < Attack
  attr_accessor :x, :y,:heading,:speed,:energy,:dead

  def initialize (bf,x,y,heading, speed, energy, origin, dead) => Bullet
    @x,@y,@heading, @speed, @energy, @origin, @bf, @dead = x,y,heading, speed, energy, origin, battlefield, false
  end

  def state
    {:x => x, :y=>y, :energy=>energy}
  end

  def tick
    return if @dead
  end

  def hit bullet
    damage > 1
    damage = bullet.energy
    @energy -=damage
  end

def << object
  case object
  when RobotRunner
    @robots << object
    @fire << object
    @dead << object
  when Bullet
    @bullets << object
  when Fire
    @fire<< object
  when Attack
    @attack<< object
  when Explosion
    @explosion<< object
  when Dead
    @dead<< object
  end
end



# Gameover when at least one robot is dead
def dead
  @energy < 0
  @gameover = true
  @timeout = true
  @time == 0
end



# Winner of the match
def winner
  if @robots
    @robots.sort_by{|rank|} do   # display ranking
      if tick > 10               # rake when match is completed
      else if energy < 0
      else dead == 0
    end


# End of War
#Time for the Statistics
  require 'rrobots'
  class Stats
    include Robots
    prepend Battlefield
      def ranking (robot_winner)
        robot_winner.ranking

    Battlefield.robots.sort_by{ |rank| } do
      puts " #{robot.name_winner}:"
      puts "damage_counterattacks: { % (100 - robot.damage_counterattacks)}"   # Damage received from robot enemy in percentage
      puts "attacks_damaged_enemy: {% robot.attacks_damaged_enemy}"            # Damage you have done to your emeny in percentage
      print "broadcast: {The match has ended. Thank you for your time and participation./n The Robots} "
    end
  end


    #End of RobotWars
