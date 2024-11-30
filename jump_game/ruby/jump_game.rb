# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
   
  if nums.first == nums.last
    true
  end
  false
end


numbers = [2,3,1,1,4]

puts "Jumping through #{numbers.to_s}....#{can_jump(numbers).to_s}"
