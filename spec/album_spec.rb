require_relative '../lib/album'

describe Album do
  let(:stairway) { Track.new('Stairway to Heaven', ['Led Zeppelin'], 482, 1.0) }
  let(:kashmir) { Track.new('Kahsmir', ['Led Zeppelin'], 508, 1.0)}
  let(:greatest_hits) { Album.new('Greatest Hits', [stairway, kashmir]) }

  describe 'attributes' do
    it 'has a title and list of tracks' do
      expect(greatest_hits.name).to eq 'Greatest Hits'
      expect(greatest_hits.tracks).to eq [stairway, kashmir]
    end
  end

  describe '#duration' do
    it 'has a duration' do
      expect(greatest_hits.duration).to eq 990
    end
  end
end
