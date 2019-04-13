require_relative '../src/quality'


describe "Testing quality" do 

  
  it("should save the given quality value") do 
    quality = Quality.new(10)
    expect(quality.value).to eql(10)
  end


  it("should degrade value by 1") do 
    quality = Quality.new(10)
    quality.degrade
    expect(quality.value).to eql(9)
  end


  it("should not degrade if value is 0") do 
    quality = Quality.new(0)
    quality.degrade
    expect(quality.value).to eql(0)
  end


  it("should not degrade by value passed if value is 0") do 
    quality = Quality.new(0)
    quality.degrade_by(2)
    expect(quality.value).to eql(0)
  end


  it("should degrade value by value passed") do 
    quality = Quality.new(10)
    quality.degrade_by(2)
    expect(quality.value).to eql(8)
  end


  it("should upgrade value by 1") do 
    quality = Quality.new(10)
    quality.upgrade
    expect(quality.value).to eql(11)
  end


  it("should upgrade value by value passed") do 
    quality = Quality.new(10)
    quality.upgrade_by(2)
    expect(quality.value).to eql(12)
  end


  it("should not upgrade value by 1 if quality is 50") do 
    quality = Quality.new(50)
    quality.upgrade
    expect(quality.value).to eql(50)
  end


  it("should not upgrade value passed if quality is 50") do 
    quality = Quality.new(50)
    quality.upgrade_by(2)
    expect(quality.value).to eql(50)
  end

end