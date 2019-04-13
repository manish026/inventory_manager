require_relative '../src/item'

class Salfuras < Item 


  def initialize(sell_in_value, quality = 50)
  	super('Salfuras', sell_in_value, quality)
  end


  def update
  	# Since its never has to be sold or decreases in Quality
  end

end