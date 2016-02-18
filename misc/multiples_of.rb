#returns number of and multiples of m or n in arr
def multiples_of(arr,m,n)
    
    multiples = []
    
    arr.each { |i| multiples << i if i % m == 0 || i % n == 0 }
    
    return multiples.count, multiples
end
