def median(nums)
    nums.sort

    if nums.count.even? == true
        return (nums[(nums.count)/2 - 1] + nums[(nums.count)/2]) / 2.0
        
    else
        return nums[(nums.count - 1)/2]
    end
end


