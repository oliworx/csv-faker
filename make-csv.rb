require 'ffaker'

line = ''
delimiter = ';'
line << FFaker::Name.name       #=> "Christophe Bartell"
line << delimiter
line << FFaker::Internet.email  #=> "kirsten.greenholt@corkeryfisher.info"

puts line
