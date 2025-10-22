#!/home/dsp2/.local/share/mise/installs/ruby/3.3.4/bin/ruby

def reverse(x)
  if x.to_s.reverse.to_i <= 2**31
    x >= 0 ? x.to_s.reverse.to_i : "-#{x.to_s.reverse}".to_i
  else
    0
  end
end


puts "reverse(#{123}) = #{reverse(123)}"
puts "reverse(#{-123}) = #{reverse(-123)}"
puts "reverse(#{120}) = #{reverse(120)}"
