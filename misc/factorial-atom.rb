def factorial(n)
  array = (1..n).to_a
  array.inject { |product,x| product*x }
end
