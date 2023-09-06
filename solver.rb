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
end