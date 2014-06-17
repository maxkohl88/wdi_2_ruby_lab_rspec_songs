class Track
  attr_reader :name, :artists, :duration
  attr_accessor :price
  def initialize(name, artists, duration, price)
    @name, @artists, @duration, @price = name, artists, duration, price
  end

  def set_discount(discount_percentage)
    self.price = price * (1 - discount_percentage)
  end
end
