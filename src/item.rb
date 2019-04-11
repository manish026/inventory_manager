

class Item 

  attr_reader :sell_in_value, :quality


  def initialize(sell_in_value, quality = 50)
    @sell_in_value = sell_in_value
    @quality = quality
  end


  def update
    @sell_in_value -= 1
    @quality -= 1
  end
  

  def get_degradation_value
  	
  end
end