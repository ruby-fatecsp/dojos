class RomanToNum
  def convert(roman)
    roman = roman.chars.to_a
    if roman[0].nil?
      0
    elsif roman.size == 1
      to_num(roman.shift)
    elsif to_num(roman[0]) < to_num(roman[1])
      -to_num(roman.shift) + convert(roman.join)
    else
      to_num(roman.shift) + convert(roman.join)
    end
  end

  private
  def to_num(roman)
    @hash ||= { 'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }
    @hash[roman]
  end
end

