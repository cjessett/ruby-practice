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

puts("Enter a word and I will count the vowels:")
word = gets.chomp

puts(count_vowels(word))


