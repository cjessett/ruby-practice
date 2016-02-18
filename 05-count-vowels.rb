# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
    
    i = 0
    count_v = 0
    while i < string.length
        if string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "o" || string[i] == "u"
            count_v += 1
        else 
            count_v = count_v
        end
        i += 1
    end
    return count_v
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
