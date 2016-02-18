#prompt user for an integer(n); returns true if prime and false,i
#where i is the smallest divisor of n if false

puts "Enter a positive integer to discover primality:"
num = gets.chomp


def is_prime?(number)
    n = number.to_i
    i = 2
    
    while i < n
        if n % i == 0
            return false,i
        else
        i += 1
        end
    end
    return true
end

puts "#{num} is prime: " + is_prime?(num).to_s


