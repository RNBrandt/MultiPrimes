require_relative 'prime_multiplication_table'

if ARGV.any?
  if ARGV.length > 1
    puts "Too many values"
    puts "Please type 'help' for complete instructions\n"
  elsif
    if ARGV[0] == "help"
      puts "\n"
      puts "     This program will display a multiplication table of primes.\n"
      puts "     The the X and Y axis of the table will display prime numbers starting from 2.\n"
      puts "     The inner values will display the product of the X and Y axis at that point.\n"
      puts "     By default the table will show the first 10 primes and their products (in a 10 x 10 table).\n"
      puts "     If you add a number below, it will print a square table of those dimensions. \n"

      puts "\n     Options:\n"
      puts "     size       # size of the prime multiplication table\n"
      puts "                  This must be a single integer (e.g. 15)."
      puts "     help       # repeat this message."
    else
      table = PrimeMultiplicationTable.new(ARGV[0].to_i)
      puts "\n"
      puts table.prime_table_printer
    end
  end
else
  puts "\n"
  puts "     Prime Multiplication Table Creator.\n"
  puts "     No size specified, printing default 10 x 10 table.\n"
  puts "     For further instructions add `help` to your previous command.\n"
  table = PrimeMultiplicationTable.new
  puts table.prime_table_printer
end
