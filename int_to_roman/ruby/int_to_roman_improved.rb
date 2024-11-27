# @param {Integer} num
# @return {String}

def int_to_roman(num)

  roman = {
    M: 1000,
    CM: 900,
    D: 500,
    CD: 400,
    C: 100,
    XC: 90,
    L: 50,
    XL: 40,
    X: 10,
    IX: 9,
    V: 5,
    IV: 4,
    I: 1
  }

  ret_val = ""

  roman.each do |key, value|
    while num - value >= 0
      ret_val.concat(key.to_s)
      num -= value
    end
  end
  ret_val
end

line = gets
puts "#{line.chomp} = #{int_to_roman(line.to_i)}"
