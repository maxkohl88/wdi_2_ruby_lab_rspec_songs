require_relative '../lib/album'

describe Album do
  let(:stairway) { Track.new('Stairway to Heaven', ['Led Zeppelin'], 482, 1.0) }
  let(:kashmir) { Track.new('Kahsmir', ['Led Zeppelin'], 508, 2.0)}
  let(:california) { Track.new('Hotel California', ['The Eagles'], 390, 1.50) }
  let(:greatest_hits) { Album.new('Greatest Hits', [stairway, kashmir, california]) }

  describe 'attributes' do
    it 'has a title and list of tracks' do
      expect(greatest_hits.name).to eq 'Greatest Hits'
      expect(greatest_hits.tracks).to eq [stairway, kashmir, california]
    end
  end

  describe '#initialize' do
    it 'prevents an album from being created with no tracks' do
      expect{ Album.new('Genesis', []) }.to raise_error ArgumentError
    end
  end

  describe '#duration' do
    it 'has a duration' do
      expect(greatest_hits.duration).to eq 1380
    end
  end

  describe '#price' do
    it 'has a price' do
      expect(greatest_hits.price).to eq 4.5
    end
  end

  describe '#artists' do
    it 'has a list of artists without duplicates' do
      expect(greatest_hits.artists).to eq ['Led Zeppelin', 'The Eagles']
    end
  end

  describe '#single?' do
    it 'is or is not a single' do
      a_single = Album.new("Stairway", [stairway])

      expect(a_single.single?).to eq true
      expect(greatest_hits.single?).to eq false
    end
  end
end
