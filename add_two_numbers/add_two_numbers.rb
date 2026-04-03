#!/home/dsp2/.local/share/mise/installs/ruby/3.3.4/bin/ruby

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# while l1 != nil
#   puts "#{l1.val}"
#   l1 = l1.next
# end
# 
# while l2 != nil
#   puts "#{l2.val}"
#   l2 = l2.next
# end


def add_two_numbers(l1, l2)

  num1 = l1.val.to_s
  num2 = l2.val.to_s

  while l1.next != nil
    num1.concat(l1.next.val.to_s)
    l1 = l1.next
  end
  puts "#{num1}"

  while l2.next != nil
    num2.concat(l2.next.val.to_s)
    l2 = l2.next
  end
  puts "#{num2}"

  sum = num1.to_i + num2.to_i

  sum.to_s.chars.reverse.each do |c|
    print c
  end

  sum.to_s.chars.reverse.map(&:to_i)
end

d3 = ListNode.new(3, nil)
d2 = ListNode.new(4, d3)
l1 = ListNode.new(2, d2)

d3 = ListNode.new(4, nil)
d2 = ListNode.new(6, d3)
l2 = ListNode.new(5, d2)

puts "#{add_two_numbers(l1, l2)}"
