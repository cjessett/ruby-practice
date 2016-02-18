def dash(nums)
    i = 0
    arr = []
    nums = nums.to_s

    
    while i < nums.length
        if i == 0 && nums[0].to_i % 2 != 0
		arr.push(nums[0] + '-')

    	elsif i == 0 && nums[0].to_i % 2 == 0
		arr.push(nums[0])

        elsif i == (nums.length - 1) && nums[i].to_i % 2 != 0
	        arr.push('-' + nums[i])
	        
    	elsif nums[i].to_i % 2 != 0
	    	arr.push('-' + nums[i] + '-')
	    
    	else 
	        arr.push(nums[i])
	    end
	i += 1
    end
return arr.join
end
