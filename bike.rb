class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :pannier_id

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false, pannier_id)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @pannier_id = pannier_id
  end

  def rent!
    self.rented = true
  end

  def return!
    self.rented = false
  end

end


# added new class for basket and contents

class Pannier 

  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :cargo_contents, :bike_id

  def initialize(id, bike_id)
    @id = id
    @cargo_contents = []
    @bike_id = bike_id
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end
  
end