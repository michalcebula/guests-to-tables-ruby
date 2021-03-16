module Data
  class ThirdMeal

    def initialize(combinations_array, guests_array, guests_hash, tables_number, seats_number, comparator)
      @combinations_array = combinations_array
      @guests_hash = guests_hash
      @guests_array = guests_array
      @tables_number = tables_number
      @seats_number = seats_number
      @comparator = comparator
      @trd_meal_array = []
    end

    def hash_update #creates array with third guests seats combination and adds them to guests_hash

      while combinations_array.length < 3*tables_number
        a = 1
        while a < combinations_array.length
          combination = guests_array.sample(seats_number)
          combinations_array.each do |element|
            comparsion = element & combination
            if comparsion.length > comparator #comparator depands of guests number and tables number
              break
            else
              a += 1
            end
          end
        end
        combinations_array << combination
        trd_meal_array << combination
        @guests_array = guests_array-combination
      end
      iter = 0
      guests_hash.each_value do |val|
        val << trd_meal_array[iter]
        iter += 1
      end
    end


    private
    attr_accessor :combinations_array
    attr_accessor :guests_array
    attr_accessor :trd_meal_array
    attr_reader :guests_hash
    attr_reader :tables_number
    attr_reader :seats_number
    attr_reader :comparator

  end
end
