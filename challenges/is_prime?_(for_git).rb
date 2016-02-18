#prompt user for an integer(n); returns true if prime and false,i
#where i is the smallest divisor of n if false

puts "Enter a positive integer to discover primality:"
num = gets.chomp


def is_prime?(number)
    n = number.to_i
    i = 2
    if n < 2
        return false
    end
    
    while i < n
        if n % i == 0
            return false#,i <== returns smallest divisor
        else
        i += 1
        end
    end
    return true
end

is_prime?(0)
