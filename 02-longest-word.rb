# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

puts("enter a sentence:")
string = gets.chomp

def longest_word(string)
    words = string.split
    
    longest_word = nil
    
    i = 0
    while i < words.length
        current_word = words[i]
        
        if longest_word == nil
            longest_word = current_word
            
        elsif longest_word.length < current_word.length
            longest_word = current_word
        end
    i += 1
    end
return longest_word

end

def shortest_word(string)
    words = string.split
    
    shortest_word = nil
    
    i = 0
    while i < words.length
        current_word = words [i]
        
        if shortest_word == nil
            shortest_word = current_word
        elsif shortest_word.length > current_word.length
            shortest_word = current_word
        end
    i += 1
    end
return shortest_word
end

puts(longest_word(string) + ":is the longest word")
puts(shortest_word(string) + ":is the shortest word")

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
