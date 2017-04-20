
# -*- mode: ruby; orgstruct-heading-prefix-regexp: "#"; -*-
# Local Variables:
# eval: (orgstruct-mode)
# End:
# coding: utf-8

#* Spousteni Ruby skriptu

# $ ruby -v
# $ ruby -I.
# $ ruby -ractivesupport
# $ ruby my_script.rb

#* IF

# podmineny prikaz
if a > 0
  puts "a je kladne"
elsif a == 0
  puts "a je nula"
else
  puts "a je zaporne"
end

puts "Hello #{name}!" unless name.nil?

# Priklad:
#
# Nactete 2 cisla a vypiste jejich podil.


#*** Priklad
# Nactete 2 cisla, operand (+,-,*,/) a vysledek vypiste.
# Napriklad 3,8,+ => 11
# Slo by to snaze? Metody String#split, Object#to_i
# A co bez podmineneho prikazu?

#* CASE

# /[a-z]*/ === "sdf"
# => true
# Integer  === 1
# => true

case input
when /dog/
  puts "I like dogs too, tell me more about them."
when Integer
  puts "No need to talk to me in numbers"
else
  puts "Sorry, I didn't get it"
end


# http://www.gutenberg.org/cache/epub/2265/pg2265.txt


lines.each do |line|
  puts line
end


a[0] == a.first
a[-1] == a.last
