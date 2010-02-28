class RomanToNumStack
  ROMAN = { 
            'I' => 1,
            'V' => 5,
            'X' => 10,
            'L' => 50,
            'C' => 100,
            'D' => 500,
            'M' => 1000
          }

  def convert(roman)
    roman = roman.chars.map { |number| ROMAN[number] }
    stack = [0]
    if roman.empty?
      0
    else
      roman.each do |number|
        if stack.last < number
          stack.push(number - stack.pop)
        else
          stack.push number
        end
      end
      stack.inject(0) { |sum, number| sum += number }
    end
  end
end

