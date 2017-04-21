require 'pry'

# Napiste program, ktery vytvori pole
# druhych mocnin od 1 do 10

cisla = (1..10).to_a

mocniny = cisla.map do |i|
  i * i
end

binding.pry

puts cisla
puts mocniny


10.times.map { |x| x*x }
# => [0, 1, 4, 9, 16, 25, 36, 49, 64, 81] 
