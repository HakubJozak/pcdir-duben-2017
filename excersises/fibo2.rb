# F(n) = F(n-2) + F(n-1)
# F(0) = 0
# F(1) = 0

# def fibonacci(n)
#   if n == 0
#     puts 0
#     0
#   elsif n == 1
#     puts 1
#     1
#   else
#     fibonacci(n-2) + fibonacci(n-1)
#   end
# end
require 'pry'


def fibo(n)
  vysledky = [ 0,1 ]

  if n == 0 or n == 1
    n
  else
    i = vysledky.size

    while i <= n
      fibonacci = vysledky[i-1] + vysledky[i-2]
      vysledky << fibonacci
      i = i + 1
    end

    vysledky[n]
  end
end


10.times do |n|
  puts "#{n}. cislo ve Fibonacciho posloupnosti je #{fibo(n)}"
end

# https://gist.github.com/HakubJozak/
