# Priklad:
#
# Zeptejte se uzivatele na
#
# - operaci
# - cislo 'a'
# - cislo 'b'
# 
# Provedte s cisly zadanou operaci a vysledek vypiste.


print 'Zadejte cislo: '
a = gets.chomp.to_i

print 'Zadejte operaci: '
o = gets.chomp

print 'Zadejte cislo: '
b = gets.chomp.to_i

# v = case o
#       when '+' then a+b
#       when '-' then a-b
#       else 'neco je spatne'
#     end
v = a.public_send o, b
puts v

# if o == '+'
#   puts a + b
# elsif o == '-'
#   puts a - b
# elsif o == '*'
# else
#   puts 'neco je spatne'
# end
  
