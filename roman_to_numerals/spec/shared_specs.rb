shared_examples_for "roman numerals converters" do
  it 'should convert a empty String to 0' do
    subject.convert('').should == 0
  end

  it 'should convert I to 1' do
    subject.convert('I').should == 1
  end

  it 'should convert V to 5' do
    subject.convert('V').should == 5
  end

  it 'should convert X to 10' do
    subject.convert('X').should == 10
  end

  it 'should convert L to 50' do
    subject.convert('L').should == 50
  end

  it 'should convert C to 100' do
    subject.convert('C').should == 100
  end

  it 'should convert D to 500' do
    subject.convert('D').should == 500
  end

  it 'should convert M to 1000' do
    subject.convert('M').should == 1000
  end

  it 'should convert II to 2' do
    subject.convert('II').should == 2
  end

  it 'should convert VI to 6' do
    subject.convert('VI').should == 6
  end

  it 'should convert IV to 4' do
    subject.convert('IV').should == 4
  end

  it 'should convert XCIV to 94' do
    subject.convert('XCIV').should == 94
  end

  it 'should convert MCMXCVIII to 1998' do
    subject.convert('MCMXCVIII').should == 1998
  end
end
