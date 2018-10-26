# using define_method and instance_variable_get/set
class CarModel2
  FEATURES = ["engine", "wheel", "airbag", "alarm", "stereo"]

  FEATURES.each do |feature|
    define_method("#{feature}_info=") do |info|
      instance_variable_set("@#{feature}_info", info)
    end

    define_method("#{feature}_info") do
      instance_variable_get("@#{feature}_info")
    end

    define_method "#{feature}_price=" do |price|
      instance_variable_set("@#{feature}_price", price)
    end

    define_method("#{feature}_price") do
      instance_variable_get("@#{feature}_price")
    end
  end
end


dacia = CarModel2.new
dacia.engine_info = 1.6
dacia.engine_price = 100
dacia.wheel_info = "195/65/15"
dacia.wheel_price = 25
dacia.airbag_info = "in front of driver"
dacia.airbag_price = 50
dacia.alarm_info = "Made in France"
dacia.alarm_price = 75

p dacia


# using attr_accessor
class CarModel2
  attr_accessor :engine_info, :engine_price, :wheel_info, :wheel_price, :airbag_info, :airbag_price, :alarm_info, :alarm_price
end
