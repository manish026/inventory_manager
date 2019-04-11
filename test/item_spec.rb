
require_relative '../src/item'

describe "Testing item" do 
  

  it("should initialize with sellIn value") do 
  	sell_in_value = 10
    item = Item.new(sell_in_value)
    expect(item.sell_in_value).to eql(10)
  end


  def get_item(sell_in_value, quality)
  	sell_in_value = sell_in_value
    quality = quality
    item = Item.new(sell_in_value, quality)
  end


  it("should initialize with sell in value & quality") do
    item = get_item(10, 20)
    expect(item.sell_in_value).to eql(10)
  end


  it("should decrease sell in value") do 
    item = get_item(10, 20)
    item.update
    expect(item.sell_in_value).to eql(9)
  end
  

end