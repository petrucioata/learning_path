class CarModel3
  def self.features(*args)
    args.each do |feature|
      attr_accessor "#{feature}_price", "#{feature}_info"
    end
  end

  features :engine, :wheel, :airbag, :alarm
end


dacia = CarModel3.new
dacia.engine_info = 1.6
dacia.engine_price = 100
dacia.wheel_info = "195/65/15"
dacia.wheel_price = 25
dacia.airbag_info = "in front of driver"
dacia.airbag_price = 50
dacia.alarm_info = "Made in France"
dacia.alarm_price = 75

p dacia
