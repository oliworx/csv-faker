require 'ffaker'

line = ''
delimiter = ';'
i = 1


while i <= 5 do

    line << i.to_s
    line << delimiter

    line << FFaker::NameDE.first_name       #=> "Christoph"
    line << delimiter

    line << FFaker::NameDE.last_name       #=> "Bartell"
    line << delimiter

    line << FFaker::Internet.email  #=> "kirsten.greenholt@corkeryfisher.info"

    puts line
    line = ''
    i += 1
end
