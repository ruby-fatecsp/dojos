require 'lib/calculadora'

describe Calculadora do
  it "valores deveria retornar 1 e 2" do
    Calculadora.new(1,2).valores.should == [1,2]
  end

  it "valores deveria retornar 3 e 4" do
    Calculadora.new(3,4).valores.should == [3,4]
  end

  it "valores 1 e 2 somados deveriam dar 3" do
    Calculadora.new(1,2).soma.should == 3
  end
  
  it "valores 3 e 4 somados deveriam dar 7" do
    Calculadora.new(3,4).soma.should == 7
  end

  it "valores 1 e 2 subtraidos deveriam dar -1" do
    Calculadora.new(1,2).subtrai.should == -1
  end

  it "valores 4 e 3 subtraidos deveriam dar 1" do
    Calculadora.new(4,3).subtrai.should == 1
  end

  it "valores 1 e 2 multiplicados deveriam dar 2" do
    Calculadora.new(1,2).multiplica.should == 2
  end

  it "valores 3 e 7 multiplicados deveriam dar 21" do
    Calculadora.new(3, 7).multiplica.should == 21
  end

  it "valores 10 e 5 divide deveriam dar 2" do
    Calculadora.new(10, 5).divide.should == 2
  end

  it "valores 10 e 0 divide deveria soltar uma exceção" do
    lambda { Calculadora.new(10, 0).divide }.should raise_error
  end
end
