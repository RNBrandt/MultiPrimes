require_relative '../prime_multiplication_table'

describe PrimeMultiplicationTable do
  let(:size) { 2 }
  let(:prime_table) { PrimeMultiplicationTable.new(size) }

  describe 'initializing a new PrimeMultiplicationTable' do
    context 'the table_size is greater than 0' do
      it 'initializes a new instance of PrimeMultiplicationTable' do
        expect(prime_table).to be
      end
    end

    context 'the table_size is less than 1' do
      let(:size) { 0 }
      it 'raises an error' do
        expect{ prime_table }.to raise_error(RuntimeError)
      end
    end

    context 'the a table_size is not explicitly declared' do
      let(:prime_table) { PrimeMultiplicationTable.new }

      it 'has a default table_size of 10' do
        expect(prime_table.table_size).to eq 10
      end
    end
  end

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
        expect(prime_table.is_prime?(9)).to be(false)
        expect(prime_table.is_prime?(35)).to be(false)
      end
    end
  end

  describe '#primes' do
    subject { prime_table.primes }

    it 'returns an array of primes' do
      expect(subject).to eq([2,3])
    end

    context 'when the prime_table length is changed' do
      let(:size) { 10 }
      let(:ten_primes) { [2,3,5,7,11,13,17,19,23,29] }

      it 'returns an array of primes of a specified length' do
        expect(subject).to eq(ten_primes)
      end
    end
  end

  describe '#prime_multiple_table_rows' do
    it "returns a multidimensional array of the primes' multiples" do
      expect(prime_table.prime_multiple_table_rows.length).to eq(size)
      expect(prime_table.prime_multiple_table_rows[0]).to eq([2,4,6])
      expect(prime_table.prime_multiple_table_rows[1]).to eq([3,6,9])
    end
  end

  describe '#prime_table_printer' do
    let(:size) { 10 }

    it 'prints the correct values' do
      expect(prime_table.prime_table_printer[0]).to eq(prime_table.prime_multiple_table_rows[0])
      expect(prime_table.prime_table_printer[9]).to eq(prime_table.prime_multiple_table_rows[9])
    end
  end
end
