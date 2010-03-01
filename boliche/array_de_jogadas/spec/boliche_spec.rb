require File.join(File.dirname(__FILE__),"../lib/boliche")

describe Boliche do

  it 'deve pontuar as jogadas 1,2,3,4 como 10' do
    Boliche.new([1,2,3,4]).pontos.should == 10
  end

  it 'deve pontuar as jogadas 1,3,5,3 como 12' do
    Boliche.new([1,3,5,3]).pontos.should == 12
  end

  it 'deve pontuar as jogadas 4,3,2,7 como 16' do
    Boliche.new([4,3,2,7]).pontos.should == 16
  end

  it 'deve pontuar as jogadas 5,5,2,6 como 12+8=20' do
    Boliche.new([5,5,2,6]).pontos.should == 20
  end

  it 'deve pontuar as jogadas 10,5,4 como 28' do
    Boliche.new([10,5,4]).pontos.should == 28
  end

  it 'deve pontuar as jogadas 10,10,5,4 como 25+19+9=53' do
    Boliche.new([10,10,5,4]).pontos.should == 53
  end

  it 'deve pontuar as jogadas 5,5,10,2,3 como 20+15+5=40' do
    Boliche.new([5,5,10,2,3]).pontos.should == 40
  end

end

