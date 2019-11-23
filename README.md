I made this little Ruby script to generate some sample data for database benchmarks.
Using [ffaker](http://rubygems.org/gems/ffaker) it will generate CSV data like this:
```
1;Dewey;Maier;Sangstr.;26;52161;Schwetzingen;maier_dewey@kertzmann.ca;182;80;1983-01-28
2;Jacklyn;Bergmann;Scholzstr.;65;77871;Loewenstein;bergmann.jacklyn@gibson.ca;180;83;1941-02-28
3;Toni;Bergmann;Linseystr.;52;53852;Gladbach;toni_bergmann@smitham.co.uk;177;73;1976-07-19
4;Laila;Scholz;Moserstr.;6;56892;Kalkar;scholz_laila@casper.com;181;72;1941-08-08
5;Otto;Schmidt;Friedrichstr.;45;30306;Schafstaedt;schmidt.otto@willmsbosco.name;172;65;1966-07-08
6;Megan;Sommer;Wagnerstr.;31;29479;Ebersbach;sommer.megan@wisoky.info;163;69;1985-12-30
7;Cristi;Lang;Alleenstr.;2;19508;Suhl;lang_cristi@bernhard.name;177;75;1987-10-13
8;Khalilah;Voigt;Marcellestr.;13;47236;Sandersleben;khalilah.voigt@handhettinger.info;210;130;1934-01-20
9;Rich;Fischer;Grettastr.;28;93538;Wurzen;rich.fischer@treutelkutch.co.uk;201;96;1962-04-09
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
![GitHub Actions Status](https://github.com/oliworx/csv-faker/workflows/Ruby/badge.svg)

## License
MIT License: <https://kurmis.mit-license.org>
