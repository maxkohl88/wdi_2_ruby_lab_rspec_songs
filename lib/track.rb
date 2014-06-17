class Track
  attr_reader :name, :artists, :duration
  attr_accessor :price, :original_price
  def initialize(name, artists, duration, price)
    @name, @artists, @duration, @price = name, artists, duration, price

    @original_price = price
  end

  def set_discount(discount_percentage)
    self.price = original_price * (1 - discount_percentage)
  end

  def reset_discount
    self.price = original_price
  end
end
