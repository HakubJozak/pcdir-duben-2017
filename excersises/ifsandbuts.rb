f = File.new('/etc/passwd')
text = f.read
lines = text.split("\n")



a = 44

if a > 0
  puts "a je kladne"
elsif a < 0
  puts "a je zaporne"
else
  puts "a je 0"
end

# Priklad:
#
# Nactete 2 cisla a vypiste
# jejich podil. a / b
#Hint:

a = gets.to_i
b = gets.to_i

if b == 0
  puts "Nulou nemuzu delit!"
  exit 'sdfdsf'
else
  podil = a / b
  puts "Podil a/b je #{1 + 1}"
  exit 0
end
