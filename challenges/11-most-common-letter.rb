# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  letter_idx = 0
  high = 1
  while letter_idx < string.length
    current_letter = string[letter_idx]
    idx = letter_idx
    count = 1
    while idx < string.length
      if string[idx + 1] == current_letter
        count += 1
      end
      idx += 1
    end
    if count > high
      high = count
      high_letter = current_letter
    end
    letter_idx += 1
  end
  return [high_letter, high]
end

puts most_common_letter("abbab")

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
