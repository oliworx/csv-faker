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

def random_normal_dist(m, s, min, max)
  gen = Rubystats::NormalDistribution.new(m, s)
  begin
    y = gen.rng.to_i
  end until (y >= min && y <=max)
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

  number = random_normal_dist(0, 30, -250, 250).ceil.abs
  line << number.to_s
  line << delimiter

  line << FFaker::AddressDE.zip_code
  line << delimiter

  line << FFaker::AddressDE.city
  line << delimiter

  line << FFaker::Internet.email("#{fn}.#{ln}")
  line << delimiter


  height = random_normal_dist(175, 15, 120, 220)
  line << height.round.to_s
  line << delimiter

  weight = random_normal_dist(height-100, 10, 40, 180)
  line << weight.round.to_s
  line << delimiter

  birthday = Date.today - rand(365*70) - 16*365
  line << birthday.to_s

  puts line
  line = ''
  i += 1
end
