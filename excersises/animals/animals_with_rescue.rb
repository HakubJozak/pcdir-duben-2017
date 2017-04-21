require_relative 'has_energy'
require_relative 'animal'
require_relative 'dog'
require_relative 'cat'


def run_loop(animal)
  hours = 0
  retries = nil

  loop do
    puts "-- Time: #{hours}h-------------------"
    puts " ENERGY: #{animal.energy}"
    puts "-------------------------------------"

    print "Enter animal command: "
    begin
      case gets.chomp
      when 'e'
        puts 'What food do you want to feed your animal with?'
        puts "[h]am, ..."
        case gets.chomp
        when 'h' then animal.eat!(:ham)
        when 's' then animal.eat!(:soya)
        else
          animal.eat!
        end
      when 'w' then animal.walk!
      when 'b'
        animal.bark!
      else
        animal.speak!
      end

      if  animal.dead?
        puts 'RIP'
        exit
      end
    rescue
      retries ||= 1

      if retries < 5
        retries += 1
        retry
      else
        raise "S tim si neumim poradit"
      end

      puts exception.message
      puts $!.backtrace  
      puts 'stala se chyba'
    ensure
      hours += 1
    end
  end

end


animal = Cat.new('Micka')
# animal = Dog.new('Azor')
animal.energy = 44
run_loop(animal)
