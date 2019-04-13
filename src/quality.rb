
class Quality 


  attr_reader :value

  def initialize(value)
  	@value = value
  end

  
  def degrade_by(value)
    @value -= value
  	@value = 0 unless @value >= 0
  end


  def degrade
  	degrade_by(1)
  end


  def upgrade_by(value)
  	@value += value
  	@value = 50 unless @value <= 50
  end


  def upgrade
  	upgrade_by(1)
  end


end