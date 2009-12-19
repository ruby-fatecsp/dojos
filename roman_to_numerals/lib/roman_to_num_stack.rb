class RomanToNumStack
  def convert(roman)
    roman = roman.chars.to_a.map { |b| to_num(b) }
    stack = [0]
    if roman[0].nil?
      0
    else
      roman.each do |r|
        if stack.last < r
          stack.push(r - stack.pop)
        else
          stack.push r
        end
      end
      stack.inject(0) { |sum, p| sum += p }
    end
  end

  private

  def to_num(roman)
    @hash ||= {
      'I' => 1,
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

