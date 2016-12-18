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
# match[stdout]=/1962-[0-1][0-9]-[0-3][0-9]$/

./make-csv.rb 100 | cut -f 10 -d';' | sort -n | head -n1
# match=/^40$/

./make-csv.rb 100 | cut -f 10 -d';' | awk '{a+=$1} END{print a/NR}'
# match=/^75.54/

./make-csv.rb 100 | cut -f 9 -d';' | awk '{a+=$1} END{print a/NR}'
# match=/^175.86$/

## performance test: should make 5000 lines in <1s
/usr/bin/time --format "%U" ./make-csv.rb 5000 > /dev/null
# match[stderr]=/^0/

