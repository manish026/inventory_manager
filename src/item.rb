

class Item 

  attr_reader :sell_in_value, :quality


  def initialize(sell_in_value, quality = 50)
    @sell_in_value = sell_in_value
    @quality = quality
  end


  def update
    @sell_in_value -= 1
    @quality -= get_degradation_value
  end
  

  def get_degradation_value
  	return 1 unless @sell_in_value < 0
  	return 2
  end
  
end