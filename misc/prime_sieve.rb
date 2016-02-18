#sieve of eratosthenes; returns an array of primes less than n

def prime_sieve(n)

  primes = Array.new
  primes = (2..n).to_a
  index = 0
  
  while primes[index]**2 <= primes.last
      prime = primes[index]
      primes = primes.select { |x| x == prime || x % prime != 0 }
      index += 1
  end
  
  return primes
end
