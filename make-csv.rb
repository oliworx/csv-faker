require 'ffaker'

line = ''
delimiter = ';'
i = 1


while i <= 5 do
    # line << FFaker::Name.name       #=> "Christophe Bartell"
    # line << delimiter

    line << i.to_s
    line << delimiter

    line << FFaker::Name.first_name       #=> "Christoph"
    line << delimiter

    line << FFaker::Name.last_name       #=> "Bartell"
    line << delimiter

    line << FFaker::Internet.email  #=> "kirsten.greenholt@corkeryfisher.info"

    puts line
    line = ''
    i += 1
end
