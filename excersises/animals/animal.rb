class Animal
  include HasEnergy

  def initialize(name)
    @name = name
    @energy = 10
  end
  
  def walk!
    @energy -= 1
  end

  # def speak
  #   if self.is_a? Dog
  #     puts 'wooooof'
  #   elsif self.is_a? Cat
  #     puts 'meow'
  #   else
  #     fail 'Cannot talk'
  #   end
  # end

  # attr_reader :energy
  # attr_writer :energy  
  # attr_accessor :energy
end
