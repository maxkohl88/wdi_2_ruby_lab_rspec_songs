class Album
  attr_reader :name, :tracks

  def initialize(name, tracks)
    @name, @tracks = name, tracks

  raise ArgumentError, 'no tracks provided' if tracks.count == 0

  end

  def duration
    tracks.map(&:duration).reduce(&:+)
  end

  def price
    tracks.map(&:price).reduce(&:+)
  end

  def artists
    tracks.map(&:artists).flatten.uniq
  end

  def single?
    tracks.count == 1
  end
end
