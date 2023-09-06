require_relative '../solver'

describe Solver do

    subject(:solver) {described_class.new}

    describe 'factorial testing' do
        it 'Factorial of a number' do
            expect(solver.factorial(5)).to eq(120)
        end

        it 'Factorial of 0' do
            expect(solver.factorial(0)).to eq(1)
        end

        it 'Factorial of a negative number' do
            expect{solver.factorial(-1)}.to raise_error(ArgumentError)
        end
    end
end