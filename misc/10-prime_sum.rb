puts "Sum of primes below:"
n = gets.chomp.to_i

def prime_sieve(n)
  primes = Array.new

  for i in 0..(n-2)
    primes[i] = i + 2
  end

  index = 0
  while primes[index]**2 <= primes.last
    prime = primes[index]
    primes = primes.select { |x| x == prime || x % prime != 0 }
    index += 1
  end

return primes.inject { |sum,x| sum + x }
end

puts prime_sieve(n)
