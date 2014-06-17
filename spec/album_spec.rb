require_relative '../lib/album'

describe Album do
  describe 'attributes' do
    it 'has a title and list of tracks' do
      track = Track.new('Stairway to Heaven', ['Led Zeppelin'], 482, 1.0)
      album = Album.new('Greatest Hits', [track])
      expect(album.name).to eq 'Greatest Hits'
      expect(album.tracks).to eq [track]
    end
  end
end
