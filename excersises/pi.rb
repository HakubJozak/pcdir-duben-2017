require 'bigdecimal'

# Tayloruv rozvoj PI.
# 
# Pi/4 = 1 - 1/3 + 1/5 - 1/7 + ...
#
def sum(n)
  s = BigDecimal.new("1")
  sig = 1

  1.upto(n) do |i|
    sig *= -1
    s += (1.0 / (2*i + 1)) * sig
  end

  4 * s
end

puts sum(30000000)

