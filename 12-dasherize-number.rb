# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

#array of ints.to_s
#look at first, if odd then odd-
#if even go to next
#



def dasherize_number(num)
  arr = num.to_s.split("")
  idx = 0
  while idx < arr.length
    if arr[idx].to_i % 2 == 0
      idx += 1
    elsif idx == 0 && arr[idx].to_i % 2 != 0
      arr[idx] = "#{arr[idx]}-"
    elsif arr[idx].to_i % 2 != 0 && arr[idx - 1].length > 1
      arr[idx] = "#{arr[idx]}-"
    else
      arr[idx] = "-#{arr[idx]}-"
    end
    idx += 1
  end
  return final = arr.join("").split("")
  if final[-1] == "-"
    final.pop
  end
  return final.join("")
end

puts dasherize_number(303)

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
