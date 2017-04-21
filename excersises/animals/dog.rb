class Dog < Animal

  def to_s
    "Pes #{@name}"
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

  def speak!
    @energy -= 5
    puts 'woof'
  end
end


