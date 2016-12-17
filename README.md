I made this little Ruby script to generate some sample data for database benchmarks.
Using [ffaker](http://rubygems.org/gems/ffaker) it will generate CSV data like this:
```
1;Fatma;Maier;Violastr.;1;19760;Mainburg;fatma_maier@greenfelderdamore.us;155;57;1974-06-17
2;Marc;Elsner;Ferdinandstr.;53;57315;Alzey;marc_elsner@anderson.biz;183;88;1931-02-10
3;Noelle;Hahn;Beckstr.;6;57109;Freilassing;hahn_noelle@kreiger.co.uk;168;44;1982-01-28
4;Mona;Wagner;Connerstr.;14;48256;Leichlingen;mona.wagner@emardpadberg.name;171;73;1942-09-13
5;James;Moser;Brandtstr.;36;47236;Sandersleben;james.moser@handhettinger.info;181;87;1970-05-27
6;Isabel;Voigt;Iljastr.;27;97498;Hagenbach;voigt_isabel@cole.name;184;81;1971-11-13
7;Marwin;Haupt;Schneiderweg;9;76955;Mitterteich;haupt.marwin@herzog.com;153;55;1938-06-01
8;Vivienne;Schmidt;Juliahain;61;28069;Teupitz;schmidt.vivienne@weberlebsack.ca;163;66;1973-12-04
9;Levi;Scholz;Saskiagasse;78;00515;Bocholt;scholz.levi@stokescummings.com;188;91;1946-02-19
```
The colums are:
 - id
 - first name
 - last name
 - street
 - street number / house number (up to 250)
 - ZIP / postal code (5 digits)
 - City
 - email address
 - height (normal distributed)
 - weight (normal distributed and correlated with heigth)
 - date of birth

To customize the columns to your own needs, just have a look at the [FFaker reference] (https://github.com/ffaker/ffaker/blob/master/REFERENCE.md) to see what is possible.

## Setup


[![Codacy Badge](https://api.codacy.com/project/badge/Grade/a8b23e4eefb6481e931c410f205787ef)](https://www.codacy.com/app/kurmis/csv-faker?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=oliworx/csv-faker&amp;utm_campaign=badger)

* clone the repo ```git clone https://github.com/oliworx/csv-faker.git```
* go to the project directory: ```cd csv-faker```
* you will need [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and  [Bundler](http://bundler.io/#getting-started)
* install the required gems: ```bundle install``` 

## Usage

To make a CSV-File with 1000 lines:

    ./make-csv.rb 1000 > sample.csv

If this should fail, try

    ruby make-csv.rb 1000 > sample.csv

## Testing

Test are implemented with  the rvm/tf Testing Framework
(<https://github.com/rvm/tf>)

For the performance test the ```time``` package is needed, make sure it is installed running ```which time``` or install it with ```sudo apt-get install time```

To run the  tests:

    bundle exec tf make-csv_comment_test.sh

To see the generated data during the testing run with the --text switch:

    bundle exec tf --text make-csv_comment_test.sh

[![Build Status](https://travis-ci.org/oliworx/csv-faker.svg?branch=master)](https://travis-ci.org/oliworx/csv-faker)
[![CircleCI](https://circleci.com/gh/oliworx/csv-faker.svg?style=svg)](https://circleci.com/gh/oliworx/csv-faker)
[![Build Status](https://semaphoreci.com/api/v1/oliworx/csv-faker/branches/master/badge.svg)](https://semaphoreci.com/oliworx/csv-faker)
[![Codeship Status for oliworx/csv-faker](https://codeship.com/projects/00d8f720-1d45-0134-e8d6-2621c61f771d/status?branch=master)](https://codeship.com/projects/159997)

## License
MIT License: <https://kurmis.mit-license.org>
