class Solver
    def factorial(number)
        if number.negative?
            raise ArgumentError, "Factorial of negative number is undefined"
        elsif number.zero?
            1
        else
            number * factorial(number - 1)
        end
    end

    def fizz_buzz(number)
        if number % 3 == 0 && number % 5 == 0
            "fizzbuzz"
        elsif number % 3 == 0
            "fizz"
        elsif number % 5 == 0
            "buzz"
        else
            number
        end
    end
end

solve = Solver.new
puts solve.factorial(5)
puts solve.fizz_buzz(6)
puts solve.fizz_buzz(10)
puts solve.fizz_buzz(15)
puts solve.fizz_buzz(7)