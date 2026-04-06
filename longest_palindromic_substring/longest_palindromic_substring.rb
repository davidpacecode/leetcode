#!/home/dsp2/.local/share/mise/installs/ruby/3.3.4/bin/ruby

def longest_palindrome(s)

  longest = 0

  index = s.length - 1
  index.downto(0) do |i|
    longest = i if s[0..index] == s[index..0] &&
  end
end

