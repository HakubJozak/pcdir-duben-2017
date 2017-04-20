def fibo(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fibo(n-1) + fibo(n-2)
  end
end

#--------------------------

# results = [ 0, 1 ]

def fibo(n,results)
  if $results[n]
    $results[n]
  else
    fibo(n-1, results) + fibo(n-2, results)
  end
end

fibo(20, results)
puts results.inspect

#----------------------------

class FiboGenerator
  def initialize
    @results = []
  end

  def [](n)
    if @results[n]
      @results[n]
    else
      fibo(n-1) + fibo(n-2)
    end
  end

  def print(n)
    self[30]
  end
end

fibo = FiboGenerator.new
fibo[30]  

#----------------------------
