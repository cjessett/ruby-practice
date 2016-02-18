#method that takes an m x m matrix and transposes it

def my_transpose(arr)
    m = arr.count
    n = arr[0].count
    transposed = []
    
    if m == n
        i = 0
        while i < m
            transposed[i] = Array.new(m)
                j = 0
                while j < m
                    transposed[i][j] = arr[j][i]
                    j += 1
                end
            i += 1
        end
    else
        return "invalid matrix"
    end
    return transposed
end


