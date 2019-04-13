require_relative '../src/quality'

class Item 

  attr_reader :name, :sell_in_value, :quality


  def initialize(name, sell_in_value, quality = 50)
    @sell_in_value = sell_in_value
    @quality = Quality.new(quality)
    @name = name
  end


  def update
    update_sell_in_value
    update_quality
  end
  
  
  def update_sell_in_value
  	@sell_in_value -= 1
  end


  def update_quality
  	degradation_value = get_degradation_value
  	@quality.degrade_by(degradation_value) unless degradation_value < 0
  end
  

  def get_degradation_value
  	return 1 unless @sell_in_value < 0
  	return 2
  end

  
end