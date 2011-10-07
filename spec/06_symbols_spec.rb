
describe "Symbols", "not quite a string, not yet a constant" do
  
  it "should be assignable" do
  
    value = :prince
    value.should eq :prince
    
  end
  
  it "should be a Symbol class" do
    
    value = :prince
    value.should be_kind_of Symbol
    
  end
  
  it "should not be the same as a string with the same name" do
    
    value = :prince
    value.should_not eq "prince"
    
  end
  
  context "when converting to a string" do
    
    it "should be equal to a string" do
      
      value = :prince
      
      value.to_s.should eq "prince"
      "#{value}".should eq "prince"
      
    end
    
  end
  
  context "when converting from a string" do
    
    it "should be a Symbol class" do
      
      value = "prince"
      value.to_sym.should be_kind_of Symbol
      
    end
    
    it "should be equal to the symbol" do
      
      value = "prince"
      value.to_sym.should eq :prince
      
    end
    
  end
  
  context "failing tests" do
    
    context "when I call to_s or place it in a String on the Symbol" do
      
      it "should be equal to a string" do
        
        # For this one see what you can do to the symbol stored in the variable
        # artist to make it meet the expectations "george_michael"
        
        artist = :george_michael
        artist.to_s.should == "george_michael"  # WAS: artist.should == "george_michael"
        "#{artist}".should == "george_michael"  # WAS: artist.should == "george_michael"
      end
      
    end
    
  end
  
  
end
