require '/home/michal/RUBY/Intership/data/create_guests_array'

RSpec.describe Data::CreateGuestsArray do

  describe '#create' do

      subject { guests_array.create }
      let(:guests_array) { described_class.new(guests_number) }

      context 'when guests_number is integer' do

        let(:guests_number) { 15 }
        let(:expected_guests_array) { [ 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 ] }

        it 'returns array with elements number equal to guests_number, started from 1' do
          expect(subject).to eq expected_guests_array
        end
      end
  end
end
