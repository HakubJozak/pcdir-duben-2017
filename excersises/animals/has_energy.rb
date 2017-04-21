module HasEnergy
  attr_accessor :energy

  def alive?
    @energy > 0
  end

  def dead?
    !alive?
  end
  
   def energy= (value)
     
   end
end
