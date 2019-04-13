require_relative '../src/item'

class AgedBrie < Item

  def initialize(sell_in_value, quality = 50)
  	super('Aged Brie', sell_in_value, quality)
  end

  
  def update_quality
  	@quality.upgrade
  end


end