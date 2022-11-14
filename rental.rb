class Rental

  attr_reader :bike_weight, :bike_price, :luggage_weight

  # assuming that the Rental class has no need to access the actual bike and luggage objects

  def initialize(bike_weight, bike_price, luggage_weight=0)
    @bike_weight = bike_weight
    @bike_price = bike_price
    @luggage_weight = luggage_weight
  end

  def total_bike_price
    bike_price + 2*(bike_weight)
  end

  def luggage_price
    2*(luggage_weight)
  end

  def price
    total_bike_price + luggage_price
  end

  def weight
    bike_weight + luggage_weight
  end

end
