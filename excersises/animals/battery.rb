class Battery

  include HasEnergy

  def light
    puts 'ooooooooooooooooooo'
  end

  def initialize
    @energy = 10000
  end
  
end
