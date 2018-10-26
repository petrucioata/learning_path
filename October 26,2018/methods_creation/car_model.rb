class CarModel
  # engine
  def engine_info=(info)
    @engine_info = info
  end

  def engine_info
    @engine_info
  end

  def engine_price=(price)
    @engine_price = price
  end

  def engine_price
    @engine_price
  end

  # wheel
  def wheel_info=(info)
    @wheel_info = info
  end

  def wheel_info
    @wheel_info
  end

  def wheel_price=(price)
    @wheel_price = price
  end

  def wheel_price
    @wheel_price
  end

  # airbag
  def airbag_info=(info)
    @airbag_info = info
  end

  def airbag_info
    @airbag_info
  end

  def airbag_price=(price)
    @airbag_price = price
  end

  def airbag_price
    @airbag_price
  end

  # alarm
  def alarm_info=(info)
    @alarm_info = info
  end

  def alarm_info
    @alarm_info
  end

  def alarm_price=(price)
    @alarm_price = price
  end

  def alarm_price
    @alarm_price
  end
end

dacia = CarModel.new
dacia.engine_info = 1.6
dacia.engine_price = 100
dacia.wheel_info = "195/65/15"
dacia.wheel_price = 25
dacia.airbag_info = "in front of driver"
dacia.airbag_price = 50
dacia.alarm_info = "Made in France"
dacia.alarm_price = 75

p dacia
