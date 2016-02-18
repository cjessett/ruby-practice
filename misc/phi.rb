#returns phi(num), where phi is euler totient function, and set of integers co-prime to num.
def phi(num)
	co_prime = []
	
	for i in 1..num
		if num.gcd(i) == 1
		co_prime << i
		end
	end
	return co_prime.count, co_prime
end

puts "Enter a positive integer to find the phi value:"
n = gets.chomp.to_i

puts "Phi(#{n}) = #{phi(n)}"
puts "Thanks!"
