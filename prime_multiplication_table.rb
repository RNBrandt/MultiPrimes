class PrimeMultiplicationTable
  attr_reader :size

  def initialize(table_size)
    @table_size = table_size
  end

  def is_prime?(number)
    return true if number == 2
    return false if number_is_clearly_non_prime(number)
    compare_factors(number)
  end

  def primes

  end

  private

  def number_is_clearly_non_prime(number)
    number == 1 || number.even?
  end

  def compare_factors(number)
    #cribbing from the Sieve of Eratosthenes algorithm
    root = Math.sqrt(number)
    return false if whole_number?(root)
    factor = 2

    until factor == root
      if number % factor == 0
        factor += 2
        return false
      else
        return true
      end
    end
  end

  def whole_number?(root)
    root % 1 == 0
  end

end
