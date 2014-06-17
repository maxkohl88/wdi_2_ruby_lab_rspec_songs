class Album
  attr_reader :name, :tracks

  def initialize(name, tracks)
    @name, @tracks = name, tracks
  end

  def duration
    tracks.map(&:duration).reduce(&:+)
  end
end
