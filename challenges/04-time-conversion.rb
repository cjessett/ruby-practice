# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
    m = minutes
    
    if m < 60
        return "0:" + m.to_s
      
    
    elsif m%60 == 0 
        return (m/60).to_s + ":00"
    
    
    else
        return (m/60).to_s + ':' + (m%60).to_s
    end
    
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
