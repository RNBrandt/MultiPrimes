class PrimeMultiplicationTable
  attr_reader :table_size

  def initialize(table_size= 10)
    raise 'The table size must be a positive integer' if table_size < 1
    @table_size = table_size
  end

  def is_prime?(number)
    return true if number == 2
    return false if number_is_clearly_non_prime(number)
    compare_factors(number)
  end

  def primes
    @primes ||= set_primes
  end

  def prime_table_printer
    print "\n"
    print " " * 6
    primes.each { |prime| print "%-6d" % prime }
    print "\n"
    primes.length.times { print '-------' }
    print "\n"

    prime_multiple_table_rows.each do |table_row|
      table_row.each { |cell_value| print "%-6d" % cell_value }
      print "\n"
    end
  end

   def prime_multiple_table_rows
    @primes_multiples ||= prime_multiple_row_creator
  end

  private

  def prime_multiple_row_creator
    primes.map { |x_prime| [x_prime] + primes.map { |y_prime| x_prime * y_prime} }
  end

  def set_primes
    primes = [2]
    counter = 3
    while primes.length < table_size
      primes << counter if is_prime?(counter)
      counter += 2
    end
    primes
  end

  def number_is_clearly_non_prime(number)
    number == 1 || number.even?
  end

  def compare_factors(number)
    #cribbed from the Sieve of Eratosthenes algorithm
    root = Math.sqrt(number)
    2.upto(root.to_i) do |sieve|
     return false if number % sieve == 0
    end
    return true
  end
end
