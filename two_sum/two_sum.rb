# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each do |num|
    i=nums.index(num) + 1
    while i < nums.length
      if num + nums[i] == target
        return nums.index(num), i
      end
      i+=1
    end
  end
end

