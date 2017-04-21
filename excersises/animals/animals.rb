require_relative 'has_energy'
require_relative 'animal'
require_relative 'dog'
require_relative 'cat'

# animal = Cat.new('Micka')
animal = Dog.new('Azor')
animal.energy = 44

loop do
  puts "---------------------"
  puts " ENERGY: #{animal.energy}"
  puts "--------------------"

  print "Enter animal command: "
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
    if animal.respond_to?(:bark!)
      animal.bark!
    else
      puts 'This animal cannot bark.'
    end
  else
    animal.speak!
  end

  if  animal.dead?
    puts 'RIP'
    exit
  end
end


