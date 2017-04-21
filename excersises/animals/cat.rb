class Cat < Animal

  def eat!(food = :sausage)
    case food
     when :ham 
       @energy += 10
     when :sausage
       @energy += 4
     when :soya
       @energy -= 1
      end
  end

  def speak!
    super
    # @energy -= 2
    # puts 'meow'
  end  

end
