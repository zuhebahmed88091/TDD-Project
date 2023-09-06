require_relative '../solver'

describe Solver do
  subject(:solver) { described_class.new }

  describe 'factorial testing' do
    it 'Factorial of a number' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'Factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'Factorial of a negative number' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe 'fizzbuzz testing' do
    it 'When N is divisible by 3, return "fizz"' do
      expect(solver.fizz_buzz(6)).to eq('fizz')
    end
    it 'When N is divisible by 5, return "buzz"' do
      expect(solver.fizz_buzz(10)).to eq('buzz')
    end
    it 'When N is divisible by 3 and 5, return "fizzbuzz"' do
      expect(solver.fizz_buzz(15)).to eq('fizzbuzz')
    end
    it 'when N is not divisible by 3 or 5, return N' do
      expect(solver.fizz_buzz(7)).to eq(7)
    end
  end

  describe 'Reverse String testing' do
    it 'Reverse a string' do
      expect(solver.reverse_string('hello')).to eq('olleh')
    end
  end
end
