class Album
  attr_reader :name, :tracks

  def initialize(name, tracks)
    @name, @tracks = name, tracks
  end
end
