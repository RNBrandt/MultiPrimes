class PrimeMultiplicationTable
  attr_reader :table_size

  def initialize(table_size)
    @table_size = table_size
  end

  def is_prime?(number)
    return true if (number == 2) || (number == 3)
    return false if number_is_clearly_non_prime(number)
    compare_factors(number)
  end

  def primes
    @primes ||= set_primes
  end

  private

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
    #cribbing from the Sieve of Eratosthenes algorithm
    root = Math.sqrt(number)
    return false if whole_number?(root)
    factor = 3
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
