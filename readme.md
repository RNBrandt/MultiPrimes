# Prime Multiplication Table Coding Challenge

## Objective

Write a program that prints out a multiplication table of the first 10 prime numbers.

* The program must run from the command line and print one table to STDOUT.

* The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

## Running the Program

* This program is built using ruby version 2.3.1 and is dependent on two external gems for tests and  to create good looking tables.
  ```console
  rspec
  terminal-table
  ```

* After downloading the repo, bundle the dependencies by running
```console
$ bundle install
```


* To create a default 10 x 10 table run
  ```console
  $ ruby prime_muliplication_table_runner.rb
  ```

* To create a table of a specific size include a single integer after the previous command e.g.
  ```console
  $ ruby prime_muliplication_table_runner.rb 13
  ```

* For help or further instruction run
  ```console
  $ ruby prime_muliplication_table_runner.rb help
  ```

## Running Tests
* Tests are run in the terminal using RSpec
  ```console
  $ rspec
  ```
