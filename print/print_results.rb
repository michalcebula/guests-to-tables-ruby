module Print

  class PrintResults

    def initialize(guests_hash, guests_number, tables_number, meals_number)
      @guests_hash = guests_hash
      @guests_number = guests_number
      @tables_number = tables_number
      @meals_number = meals_number

    end

    def print_results #returns results
      puts "Guests number is #{guests_number}"
      puts "Tables number is #{tables_number}"
      puts "Meals number is #{meals_number}"
      puts "Results:"
      guests_hash.each do |key, val|
        puts "Table #{key}, first meal: #{val[0]}"
        puts "Table #{key}, second meal: #{val[1]}"
        puts "Table #{key}, third meal: #{val[2]}"
      end
    end

    private
    attr_reader :guests_hash
    attr_reader :guests_number
    attr_reader :tables_number
    attr_reader :meals_number

  end
end
