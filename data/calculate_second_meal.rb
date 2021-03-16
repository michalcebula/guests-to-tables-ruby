module Data
  class SecondMeal

    def initialize(seats_number, guests_hash)
      @seats_number = seats_number
      @guests_hash = guests_hash
    end

    def hash_update #creates and adds second combination of guests seats to each table
      @snd_meal_array = []
      iter = 0
      seats_number.times do
        guests_hash.each_value do |val|
          snd_meal_array << val[0][iter]
        end
        iter += 1
        if iter == seats_number
          iter = 0
        end
      end
      iter= 0
      guests_hash.each_key do |key|
        guests_hash[key] << snd_meal_array.each_slice(seats_number).to_a[iter]
        iter += 1
      end
    end

    private

    attr_reader :seats_number
    attr_accessor :guests_hash
    attr_accessor :snd_meal_array

  end
end
