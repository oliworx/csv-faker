# csv-faker
[![Build Status](https://travis-ci.org/oliworx/csv-faker.svg?branch=master)](https://travis-ci.org/oliworx/csv-faker)

A tool to generate csv-files filled with faked data

I made this little Ruby script to generate some sample data for database benchmarks.

## Setup

* clone the repo 
* install gems: `bundle install` 

## Usage

To make a CSV-File with 1000 lines:

    make-csv.rb 1000 > sample.csv

## Testing

Test are implemented with  the rvm/tf Testing Framework
( <https://github.com/rvm/tf> )

To run the  tests:
    bundle exec tf make-csv_comment_test.sh

## License
MIT License: <https://kurmis.mit-license.org>
