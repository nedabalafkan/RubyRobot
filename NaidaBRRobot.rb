# Ruby robot simulation by Naida

#Robot requirements

require 'rrobots'
  include Battlefield
  prepend Robot
  include NervousDuck
  include NaidaBRRobot


class NaidaBRRobot
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

#class NervousDuck
  #include Robot

    def tick events
      turn_radar 35 if time ==0
      turn_gun 25 if time <3
      accelaterate 2
      turn 2
      fire 4 unless events ['robot_scanned'].empty?
    end
  end


#defense mechanism use this to attack the enemy

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
  if fire 2
  power 2
  turn_gun 20
  unless accelerate 3
end



# reaction to attacks
def Hazard
  while Offense > 2
  speed 3     #react accordingly to the enemies movements
  fire 2          # attacks are low change startegy
  turn_gun 15     # change the postion of the gun to damage emenies robot by turning the gun
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
    @robots.sort_by{|rank|}      # display ranking
      if tick > 10               # rake when match is completed
      else if energy < 0
      else dead == 0
    end
