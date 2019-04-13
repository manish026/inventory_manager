require_relative '../src/aged_brie'

describe "Testing Aged Brie" do
	
  it("should initialize and save sell in value") do
    item = AgedBrie.new(10)
    expect(item.sell_in_value).to eql(10)
  end


  it("should increase quality") do
    item = AgedBrie.new(10,10)
    item.update
    expect(item.quality.value).to eql(11)
  end


  it("should not exceed quality after 50") do
    item = AgedBrie.new(10,50)
    item.update
    expect(item.quality.value).to eql(50)
  end

end