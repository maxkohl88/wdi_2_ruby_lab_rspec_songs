require_relative '../lib/track'

describe Track do
  describe '#initialize' do
    it 'has a title, list of artists, duration, price' do
      track = Track.new('Stairway to Heaven', ['Led Zeppelin'], 482, 0.99)

      expect(track.name).to eq 'Stairway to Heaven'
      expect(track.artists).to contain_exactly('Led Zeppelin')
      expect(track.duration).to eq 482
      expect(track.price).to eq 0.99
    end
  end
end
