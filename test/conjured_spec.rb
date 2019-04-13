require_relative '../src/conjured_item'

describe "Testing Conjured Item" do
	
  it("should degrade by 2") do 
    item = ConjuredItem.new("item",10,20)
    item.update
    expect(item.quality.value).to eql(18)
  end

end