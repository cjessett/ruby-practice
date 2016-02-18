def shortest_string(list)

    shortest = list[0]
    shortest == nil ? return : i = 0
    while i < list.count
        shortest >= list[i] ? shortest = list[i] : i += 1
        i += 1
    end 
    return shortest
end


