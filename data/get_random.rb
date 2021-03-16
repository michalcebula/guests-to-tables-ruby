module Data
  class GetRandom

    def initialize(guests_hash)
      @guests_hash = guests_hash
      @combinations_array = []
    end

    def generate_combinations_array #creates array with all current guests seats combination
      guests_hash.each_value do |val|
        val.each do |element|
          combinations_array << element
        end
      end
      combinations_array
    end

    private

    attr_reader :guests_hash
    attr_accessor :combinations_array

  end
end
