class RomanToNumFunctional
  def convert(roman)
    case roman
      when ''  : 0
      when 'I' : 1
      when 'V' : 5
      when 'X' : 10
      when 'L' : 50
      when 'C' : 100
      when 'D' : 500
      when 'M' : 1000
      when (roman[0..0] * 3)
        convert(roman[0..0]) * 3
    else
      roman = roman.chars.to_a
      first = convert(roman.shift)
      sum = convert(roman.to_s)
      if (first >= sum)
        first + sum
      else
        sum - first
      end
    end
  end
end
