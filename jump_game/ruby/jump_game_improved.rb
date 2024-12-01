# @param {Integer[]} nums
# @return {Boolean}

def can_jump(nums)

  max_reach = nums[0]

  nums.each_with_index do |num, index|
    max_reach = index + num if index + num > max_reach
#    puts "num is #{num} max_reach is #{max_reach} nums.length -1 is #{nums.length - 1} current index of num is #{index}"
    return true if max_reach >= nums.length - 1

    if num == 0 && max_reach <= index
      return false
    end
  end
end

# numbers = [2,3,1,1,4]
# numbers = [3,2,1,0,4]
numbers = [2,0,6,9,8,4,5,0,8,9,1,2,9,6,8,8,0,6,3,1,2,2,1,2,6,5,3,1,2,2,6,4,2,4,3,0,0,0,3,8,2,4,0,1,2,0,1,4,6,5,8,0,7,9,3,4,6,6,5,8,9,3,4,3,7,0,4,9,0,9,8,4,3,0,7,7,1,9,1,9,4,9,0,1,9,5,7,7,1,5,8,2,8,2,6,8,2,2,7,5,1,7,9,6]

puts "Jumping through #{numbers.to_s}....#{can_jump(numbers).to_s}"
