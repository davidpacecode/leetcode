# @param {Integer} num
# @return {String}

def int_to_roman(num)

  num.to_s.each_char do |char|
    
    ret_val = ""ZZ
    case char
      when "4"

      when "9"

      else

    end
  end

  ret_val
end

line = gets
puts "#{line} = #{int_to_roman(line.to_i)}"
