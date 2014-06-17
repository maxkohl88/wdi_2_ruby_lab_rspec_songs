require_relative '../lib/track'

describe Track do
  let(:track) { Track.new('Stairway to Heaven', ['Led Zeppelin'], 482, 1.0) }


  describe '#initialize' do
    it 'has a title, list of artists, duration, price' do

      expect(track.name).to eq 'Stairway to Heaven'
      expect(track.artists).to contain_exactly('Led Zeppelin')
      expect(track.duration).to eq 482
      expect(track.price).to eq 1.0
    end
  end

  describe '#set_discount' do
    it 'discounts the price by the given amount' do
      track.set_discount(0.2)
      expect(track.price).to eq 0.8

      track.set_discount(0.6)
      expect(track.price).to eq 0.4
    end
  end

  describe '#reset_discount' do
    it 'resets the price to the original amount' do
      track.reset_discount

      expect(track.price).to eq 1
      another_track = Track.new("All the single ladies", ["Beyonce"], 300, 1.2)
      another_track.set_discount(0.1)
      another_track.reset_discount
      expect(another_track.price).to eq 1.2
    end
  end
end
