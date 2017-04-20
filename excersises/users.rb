# File.new('/etc/passwd').read.lines do |line|
#   words = line.split(':')
#   user = words.first
#   uid  = words[2].to_i

#   if uid > 1000
#     puts user
#   end
# end


File.new('/etc/passwd').read.lines do |line|
  words = line.split(':')
  user, _, uid, _ = words

  if uid.to_i > 1000
    puts user
  end
end
