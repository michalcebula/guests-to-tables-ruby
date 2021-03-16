module Data

  class FirstMeal

    def initialize(tables_number, seats_number, guests_array)
      @tables_number = tables_number
      @seats_number = seats_number
      @guests_array = guests_array
      @guests_hash = {}
    end

    def hash_create #creates hash that represents tables with guests array as value
      @chars = *(65.chr..(64+tables_number).chr)
      iter = 0
      @chars.each do |char|
        guests_hash[char] = []
        guests_hash[char] << guests_array.each_slice(seats_number).to_a[iter]
        iter += 1
      end
      guests_hash
    end

    private
    attr_reader :guests_array
    attr_reader :tables_number
    attr_reader :seats_number
    attr_accessor :guests_hash

  end
end
