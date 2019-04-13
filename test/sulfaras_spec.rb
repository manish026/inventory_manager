require_relative '../src/salfuras'


describe "Testing item" do 

  it("should return nil if update method is called") do 
    item = Salfuras.new(10,40)
    expect(item.quality.value).to eql(40)
  end


  it("should not update quality") do 
  	item = Salfuras.new(10,40)
  	item.update
    expect(item.quality.value).to eql(40)
  end

end