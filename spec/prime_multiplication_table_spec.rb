require_relative '../prime_multiplication_table'

describe PrimeMultiplicationTable do
  let(:size) { 2 }
  let(:prime_table) { PrimeMultiplicationTable.new(size) }

  describe '#is_prime?' do
    context 'the number is prime' do
      it 'returns true' do
        expect(prime_table.is_prime?(2)).to be(true)
        expect(prime_table.is_prime?(3)).to be(true)
        expect(prime_table.is_prime?(5)).to be(true)
      end
    end

    context 'the number is not prime' do
      it 'returns false' do
        expect(prime_table.is_prime?(1)).to be(false)
        expect(prime_table.is_prime?(4)).to be(false)
        expect(prime_table.is_prime?(9)).to be(false)
      end
    end
  end

  describe '#primes' do
    it 'returns an array of primes' do
      expect(prime_table.primes).to eq([2,3])
    end

    context 'when the prime_table length is changed' do
      let(:size) { 10 }
      let(:ten_primes) { [2,3,5,7,11,13,17,19,23,29] }

      it 'returns an array of primes of a specified length' do
        expect(prime_table.primes).to eq(ten_primes)
      end
    end
  end
end
