def sum(n)
  s = 0

  1.upto(n) do |i|
    s += 1.0/(i+1)
  end

  s
end

puts sum(100000)


