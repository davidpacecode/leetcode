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
    puts "num is #{num} num.to_s[0] is #{num.to_s[0]}"
    if num.to_s[0] == '4' || num.to_s[0] == '9'
      if num < 10
        ret_val.concat("IV") if num.to_s[0] == '4'
        ret_val.concat("IX") if num.to_s[0] == '9'
        num -= 4 if num.to_s[0] == '4'
        num -= 9 if num.to_s[0] == '9'
      elsif num < 100
        ret_val.concat("XL") if num.to_s[0] == '4'
        ret_val.concat("XC") if num.to_s[0] == '9'
        num -= 40 if num.to_s[0] == '4'
        num -= 90 if num.to_s[0] == '9'
      else
        ret_val.concat("CD") if num.to_s[0] == '4'
        ret_val.concat("CM") if num.to_s[0] == '9'
        num -= 400 if num.to_s[0] == '4'
        num -= 900 if num.to_s[0] == '9'
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
    puts "end of while num is #{num} num.to_s[0] is #{num.to_s[0]}"
  end
  ret_val
end

line = gets
puts "#{line.chomp} = #{int_to_roman(line.to_i)}"
