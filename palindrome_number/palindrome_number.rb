#!/home/dsp2/.local/share/mise/installs/ruby/3.3.4/bin/ruby

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x.to_s == x.to_s.reverse ? true : false
end

x = 121
puts "#{x} is a palindrome - #{is_palindrome(x)}"

x = -121
puts "#{x} is a palindrome - #{is_palindrome(x)}"

x = 10
puts "#{x} is a palindrome - #{is_palindrome(x)}"
