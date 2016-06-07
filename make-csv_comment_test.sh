## Tests for tf Test Framework
## see https://github.com/rvm/tf
## 
## User comments start with double #

./make-csv.rb 0
# status=1

ruby make-csv.rb
# status=1
# match[stderr]=/^usage: ruby make-csv/

./make-csv.rb NotANumber
# status=1
# match[stderr]=/^usage: ruby make-csv/

ruby make-csv.rb 10
# status=0

./make-csv.rb 1
# match=/Maier/

./make-csv.rb 1000 | wc -l
# match=/1000$/

./make-csv.rb 100 | tail -n 1
# match[stdout]=/^100/

