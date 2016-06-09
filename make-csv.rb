#!/usr/bin/env ruby

require 'ffaker'
require 'rubystats'

# init random generator to get reproducible data
srand(12345)

line = ''
delimiter = ';'
i = 1
max = ARGV[0].to_i

if max < 1 
    abort 'usage: ruby make-csv.rb 100'
end

def randomNormalDist(m, s, min, max)
    gen = Rubystats::NormalDistribution.new(m, s)
    begin
        y = gen.rng.to_i
    end until (y >= min && y <=max )
    y
end

while i <= max do

    line << i.to_s
    line << delimiter

    line << fn = FFaker::NameDE.first_name
    line << delimiter

    line << ln = FFaker::NameDE.last_name
    line << delimiter

    line << FFaker::AddressDE.street_name
    line << delimiter

    line << randomNormalDist(0, 30, -250, 250).ceil.abs.to_s # could be street number
    line << delimiter

    line << FFaker::AddressDE.zip_code
    line << delimiter

    line << FFaker::AddressDE.city
    line << delimiter

    line << FFaker::Internet.email("#{fn}.#{ln}")
    line << delimiter


    x = randomNormalDist(175, 15, 120, 220)              # could be body height
    line << x.round.to_s
    line << delimiter

    y = randomNormalDist(x-100, 10, 40, 180)             # could be body weight
    line << y.round.to_s
    line << delimiter

    date = Date.today - rand(365*70) - 16*365            # could be birthday
    line << date.to_s

    puts line
    line = ''
    i += 1
end
