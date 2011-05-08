require './main'

describe "Extenso do numero" do
  it "deveria retornar um quando eu der 1" do
    extenso_de(1).should be == "um"
  end
  it "deveria retornar dois quando eu der 2" do
    extenso_de(2).should be == "dois"
  end
  it "deveria retornar nove quando eu der 9" do
    extenso_de(9).should be == "nove"
  end
  it "deveria retornar dez quando eu der 10" do
    extenso_de(10).should be == "dez"
  end
    it "deveria retornar dezenove quando eu der 19" do
    extenso_de(19).should be == "dezenove"
  end
    it "deveria retornar vinte quando eu der 20" do
    extenso_de(20).should be == "vinte"
  end
  it "deveria retornar noventa quando eu der 90" do
    extenso_de(90).should be == "noventa"
  end
  it "deveria retornar vinte e um quando eu der 21" do
    extenso_de(21).should be == "vinte e um"
  end
  it "deveria retornar trinta e tres quando eu der 33" do
    extenso_de(33).should be == "trinta e tres"
  end
  it "deveria retornar noventa e nove quando eu der 99" do
    extenso_de(99).should be == "noventa e nove"
  end
  it "deveria retornar cem quando eu der 100" do
    extenso_de(100).should be == "cem"
  end
  it "deveria retornar cento e um quando eu der 101" do
    extenso_de(101).should be == "cento e um"
  end
  it "deveria retornar cento e nove quando eu der 109" do
    extenso_de(109).should be == "cento e nove"
  end
  it "deveria retornar cento e dez quando eu der 110" do
    extenso_de(110).should be == "cento e dez"
  end
  it "deveria retornar duzentos quando eu der 200" do
    extenso_de(200).should be == "duzentos"
  end
   it "deveria retornar duzentos e vinte quando eu der 220" do
    extenso_de(220).should be == "duzentos e vinte"
  end
    it "deveria retornar novecentos e noventa e nove quando eu der 999" do
    extenso_de(999).should be == "novecentos e noventa e nove"
  end
     it "deveria retornar cento e onze quando eu der 111" do
    extenso_de(111).should be == "cento e onze"
  end
   
  

end
