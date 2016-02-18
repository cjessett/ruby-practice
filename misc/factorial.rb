puts("enter a positive integer:")
n = (gets.to_i)

if n < 0
    return puts("Invalid integer")

elseif n = 0
    return 1
    
else n > 0
    product = 1
    i = 1
    while i <= n
        product = product * i
        i = i + 1
    end
    puts(n.to_s + '! = ' + product.to_s)
end
