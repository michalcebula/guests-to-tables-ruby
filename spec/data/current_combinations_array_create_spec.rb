require '/home/michal/RUBY/Intership/data/current_combinations_array_create'

RSpec.describe Data::CurrentCombinationsArrayCreate do

  describe '#generate_combinations_array' do

      subject { combinations_array.generate_combinations_array }
      let(:combinations_array) { described_class.new(guests_hash) }

      context 'When guests_hash is hash with A to D letters as keys (letters number is equal to tables_number) and array with array containig 3 integers as values' do

        let(:guests_hash) { {"A" => [[1,2,3], [1,4,7]], "B" => [[2,5,6], [10,2,5]], "C" => [[7,8,9], [8,11,3]], "D" => [[10,11,12], [6,9,12]] } }
        let(:expected_combinations_array) { [[1,2,3], [1,4,7], [2,5,6], [10,2,5], [7,8,9], [8,11,3], [10,11,12], [6,9,12]] }

        it 'returns array containig 8 elements and each of them is array with 3 integers at range from 1 to 12' do
          expect(subject).to eq expected_combinations_array
        end
      end
  end
end
