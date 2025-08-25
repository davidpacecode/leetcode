#!/home/dsp2/.local/share/mise/installs/ruby/3.3.4/bin/ruby

def longest_sub_array(nums)
  long_sub_array = 0
  running_count = 0
  zero_found = false

  nums.each_with_index do |n, i|
    if n == 1
      running_count += 1
    else
      zero_found = true
      remaining = nums[i+1..-1] || []
      remaining.each do |r|
        if r == 1
          running_count += 1
        else
          break
        end
      end
      long_sub_array = running_count if running_count > long_sub_array
      running_count = 0
    end
  end
  zero_found ? long_sub_array : running_count - 1
end

nums = [1,1,0,1]
puts "#{longest_sub_array(nums)}"
nums = [0,1,1,1,0,1,1,0,1]
puts "#{longest_sub_array(nums)}"
nums = [1,1,1]
puts "#{longest_sub_array(nums)}"
