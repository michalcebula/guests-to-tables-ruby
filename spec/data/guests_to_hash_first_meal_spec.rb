require '/home/michal/RUBY/Intership/data/guests_to_hash_first_meal'

RSpec.describe Data::GuestsToHashFirstMeal do

  describe '#create' do

      subject { guests_hash.hash_create }
      let(:guests_hash) { described_class.new(tables_number, seats_number, guests_array) }

      context 'when table_numbers and seats_numbers are integers and guests_array is array containing integers' do

        let(:tables_number) { 4 }
        let(:seats_number) { 3 }
        let(:guests_array) { [ 1,2,3,4,5,6,7,8,9,10,11,12 ] }
        let(:expected_guests_hash) { {"A" => [[1,2,3]], "B" => [[4,5,6]], "C" => [[7,8,9]], "D" => [[10,11,12]] } }

        it 'returns hash with A to D letters as keys (letters number is equal to tables_number) and array with array containig 3 integers as values' do
          expect(subject).to eq expected_guests_hash
        end
      end
  end
end
