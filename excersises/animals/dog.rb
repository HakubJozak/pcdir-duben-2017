# Vytvorte tridu Dog.
# Bude mit jednu instancni promennou @energy a dve metody.
#
#   #eat! - zvysi energie o 10
#   #walk! - snizi hodnotu energie o 1
#    #bark! - snizi hodnotu energie o 5
#
#   alive? - true, kdyz energie je vetsi nez 0



class Dog
  def initialize(name)
    @name = name
    @energy = 10
  end
  
  def bark!
    puts 'HAF!'
    @energy -= 5
  end

  def walk!
    @energy -= 1
  end

  def alive?
    @energy > 0
  end

  def dead?
    !alive?
  end

  def eat!(food = :granule)
    case food
     when :ham 
       @energy += 10
     when :granule
       @energy += 0.3
     when :sausage
       @energy += 4
     when :soya
       @energy -= 1
     else
       bark!
    end

    @energy = @energy.round(2)
  end

  def energy
    @energy
  end
end


