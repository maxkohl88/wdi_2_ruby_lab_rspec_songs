class Track
  attr_reader :name, :artists, :duration, :price
  def initialize(name, artists, duration, price)
    @name, @artists, @duration, @price = name, artists, duration, price
  end
end
