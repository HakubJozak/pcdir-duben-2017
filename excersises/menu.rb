require 'terminal-menu'

menu = TerminalMenu.new(title: 'Rick Astley - Never Gonna Give You Up',
                        description: '',
                        width: 40,
                        fg: 'white',
                        bg: 'red') do |selected|
                          puts "you have selected: #{selected}"
                          menu.quit
                        end

menu.add('Never gonna give you up') do |selected|
  puts "first option selected"
end
menu.add('Never gonna let you down') do |selected|
  puts "second option selected"
end
menu.add('Never gonna run around and desert you') do |selected|
  puts "third option selected"
end
menu.show
