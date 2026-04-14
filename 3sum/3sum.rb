#!/home/dsp2/.local/share/mise/installs/ruby/3.3.4/bin/ruby

def three_sum(nums)
  net_zeroes = []
  nums.permutation(3).each do |perm|
    net_zeroes << perm if perm.sum == 0 && !net_zeroes.include?(perm)
  end
  net_zeroes
end

nums = [-1,0,1,2,-1,-4]
puts "#{three_sum(nums)}"

nums = [0,1,1]
puts "#{three_sum(nums)}"

nums = [0,0,0]
puts "#{three_sum(nums)}"
