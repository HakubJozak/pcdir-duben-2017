require 'open-uri'
require 'pry'

# Struktura vysledneho Hashe:
#
# {
#   'Hamlet' => 334,
#   'the' 323423535
#    #....
# }

#frequency = {}
frequency = Hash.new

open("http://www.gutenberg.org/cache/epub/2265/pg2265.txt") do |f|
  text = f.read

  text.split.each do |word|
    if frequency.has_key?(word)
      frequency[word] = frequency[word] + 1
    else
      frequency[word] = 1
    end
  end
end

sorted = frequency.sort_by { |word,cetnost| -cetnost }

puts sorted.first(15)
