require 'ffaker'

line = ''
delimiter = ';'
# line << FFaker::Name.name       #=> "Christophe Bartell"
# line << delimiter

line << FFaker::Name.first_name       #=> "Christoph"
line << delimiter

line << FFaker::Name.last_name       #=> "Bartell"
line << delimiter

line << FFaker::Internet.email  #=> "kirsten.greenholt@corkeryfisher.info"

puts line
