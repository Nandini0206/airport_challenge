require 'airport'

describe Airport do

  describe '#land' do
    plane = 'plane'

    it 'lands plane at the airport when weather is sunny' do
      allow(subject).to receive(:stormy?).and_return false
      expect(subject.land(plane)).to eq 'plane'
    end
  end

  describe '#takeoff' do
    plane = 'plane'

    it 'plane can take off from airport' do
      allow(subject).to receive(:stormy?).and_return(false)
      expect(subject.takeoff(plane)).to eq 'plane'
    end

    it 'prevent plane from taking off if weather is stormy' do
      allow(subject).to receive(:stormy?).and_return true
      expect { subject.takeoff(plane) }.to raise_error('Weather is too stormy to takeoff')
    end
  end

  describe '#initialize' do
    it 'assumes all spaces are empty' do
      expect(subject.spaces).to eq []
    end
  end

end
