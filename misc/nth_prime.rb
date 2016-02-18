1st = 2
2nd = 3
3rd = 5 <== skip 4 (false)... ==> 5 == true
4th = 7 <== skip 6 (false)... ==> 7 == true
5th = 11 <== skip 8,9,10(false)..==> 11 == true


input = 1,2,3,4,5,...,n

output= 2,3,5,7,11...

p = 2 
count = 0

while count <= input
	if is_prime?(p) == true
		count += 1 
		p += 1
	end
end
return p

