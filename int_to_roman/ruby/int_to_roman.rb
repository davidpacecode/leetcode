# @param {Integer} num
# @return {String}

def int_to_roman(num)
  
  roman = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }
  ret_val = ""

  while num > 0
    if num.to_s[0] == '4'
      if num < 10
        ret_val.concat("IV")
        num -= 4
      elsif num < 100
        ret_val.concat("XL")
        num -= 40
      else
        ret_val.concat("CD")
        num -= 400
      end
    elsif num.to_s[0] == '9'
      if num < 10
        ret_val.concat("IX")
        num -= 9
      elsif num < 100
        ret_val.concat("XC")
        num -= 90
      else
        ret_val.concat("CM")
        num -= 900
      end
    else
      roman.to_a.reverse_each do |key, value|
        if (num - value >= 0)
          ret_val.concat(key.to_s)
          num -= value
          break
        end
      end
    end
  end
  ret_val
end

line = gets
puts "#{line.chomp} = #{int_to_roman(line.to_i)}"
