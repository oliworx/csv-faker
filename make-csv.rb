require 'ffaker'

# init random generator to get reproducible data
srand(1000)

line = ''
delimiter = ';'
i = 1


while i <= 5 do

    line << i.to_s
    line << delimiter

    line << fn = FFaker::NameDE.first_name
    line << delimiter

    line << ln = FFaker::NameDE.last_name
    line << delimiter

    line << FFaker::AddressDE.street_name
    line << delimiter

    line << FFaker::AddressRU.street_number
    line << delimiter

    line << FFaker::AddressDE.zip_code
    line << delimiter

    line << FFaker::AddressDE.city
    line << delimiter

    line << FFaker::Internet.email("#{fn}.#{ln}")

    puts line
    line = ''
    i += 1
end
