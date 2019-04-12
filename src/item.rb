

class Item 

  attr_reader :sell_in_value, :quality


  def initialize(sell_in_value, quality = 50)
    @sell_in_value = sell_in_value
    @quality = quality
  end


  def update
    update_sell_in_value
    update_quality
  end
  
  
  def update_sell_in_value
  	@sell_in_value -= 1
  end


  def update_quality
  	@quality -= get_degradation_value unless @quality == 0
  end
  

  def get_degradation_value
  	return 1 unless @sell_in_value < 0
  	return 2
  end
  
end