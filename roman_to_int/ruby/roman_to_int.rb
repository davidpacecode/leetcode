# @param {String} s
# @return {Integer}
def roman_to_int(s)
  
  ret_val = 0
  i = 0

  while i < s.length
    case s[i].upcase
    when 'I'
      if s[i+1] == 'V'
        ret_val += 4
        i+=1
      elsif s[i+1] == 'X'
        ret_val += 9
        i+=1
      else
        ret_val += 1
      end
    when 'V'
      ret_val += 5
    when 'X'
      if s[i+1] == 'L'
        ret_val += 40
        i+=1
      elsif s[i+1] == 'C'
        ret_val += 90
        i+=1
      else
        ret_val += 10
      end
    when 'L'
      ret_val += 50
    when 'C'
      if s[i+1] == 'D'
        ret_val += 400
        i+=1
      elsif s[i+1] == 'M'
        ret_val += 900
        i+=1
      else
        ret_val += 100
      end
    when 'D'
      ret_val += 500
    when 'M'
      ret_val += 1000
    else

    end
    i+=1
  end
  ret_val
end

puts "MCMXCIV = #{roman_to_int "MCMXCIV"}"



