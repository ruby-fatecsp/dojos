require 'lib/roman_to_num'
describe RomanToNum do

  it 'should convert a empty String to 0' do
    RomanToNum.new.convert('').should == 0
  end

  it 'should convert I to 1' do
    RomanToNum.new.convert('I').should == 1
  end

  it 'should convert V to 5' do
    RomanToNum.new.convert('V').should == 5
  end

  it 'should convert X to 10' do
    RomanToNum.new.convert('X').should == 10
  end

  it 'should convert L to 50' do
    RomanToNum.new.convert('L').should == 50
  end

  it 'should convert C to 100' do
    RomanToNum.new.convert('C').should == 100
  end

  it 'should convert D to 500' do
    RomanToNum.new.convert('D').should == 500
  end

  it 'should convert M to 1000' do
    RomanToNum.new.convert('M').should == 1000
  end

  it 'should convert II to 2' do
    RomanToNum.new.convert('II').should == 2
  end

  it 'should convert VI to 6' do
    RomanToNum.new.convert('VI').should == 6
  end

  it 'should convert IV to 4' do
    RomanToNum.new.convert('IV').should == 4
  end

  it 'should convert XCIV to 94' do
    RomanToNum.new.convert('XCIV').should == 94
  end

  it 'should convert MCMXCVIII to 1998' do
    RomanToNum.new.convert('MCMXCVIII').should == 1998
  end
end
