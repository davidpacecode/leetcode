#!/home/dsp2/.local/share/mise/installs/ruby/3.3.4/bin/ruby

def longest_palindrome(s)

  return s if s == s.reverse

  longest = 0
  index = 0

  until index == (s.length) do
    # puts s[index..s.length - 1]
    if s[index..s.length - 1] == s[index..s.length - 1].reverse
      longest = s[index..s.length - 1].length
      longest_string = s[index..s.length - 1]
      break
    end
    index += 1
  end

  index = s.length - 2

  until index < 0 do
    # puts s[0..index]
    if s[0..index] == s[0..index].reverse
      return s[0..index] if s[0..index].length > longest
    end
    index -= 1
  end

  longest_string
end

lp = longest_palindrome("abba")
puts lp.to_s
puts
puts
puts

lp = longest_palindrome("daskfafhdgkhsflksjalfs")
puts lp.to_s
