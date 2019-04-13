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
  	@quality.upgrade if is_aged_brie
  	@quality.degrade_by(get_degradation_value) 
  end
  

  def get_degradation_value
  	return 1 unless @sell_in_value < 0
  	return 2
  end


  def is_aged_brie
  	@name.downcase == "aged brie"
  end

  
end