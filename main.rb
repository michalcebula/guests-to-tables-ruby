require "./data/create_guests_array"
require "./data/guests_to_hash_first_meal"
require "./data/calculate_second_meal"
require "./data/calculate_third_meal"
require "./data/get_random"
require "./print/print_results"

class GuestsToSeats

  def initialize(guests_number, tables_number) #create instance variables
    @guests_number = guests_number
    @tables_number = tables_number
    @meals_number = 3
    @seats_number = guests_number / tables_number
    @comparator = 2
    case comparator
    when (0...5).include?(seats_number)
      comparator = 1
    when (5...10).include?(seats_number)
      comparator = 2
    when (10...16).include?(seats_number)
    comparator = 3
    else
    comparator = 4
    end
  end

  def print_results
      @guests_array = Data::CreateGuestsArray.new(guests_number).create
      @guests_hash = Data::FirstMeal.new(tables_number, seats_number, guests_array).hash_create
      Data::SecondMeal.new(seats_number, guests_hash).hash_update
      @combinations_array = Data::GetRandom.new(guests_hash).generate_combinations_array
      Data::ThirdMeal.new(combinations_array, guests_array, guests_hash, tables_number, seats_number, comparator).hash_update
      Print::PrintResults.new(guests_hash, guests_number, tables_number, meals_number).print_results
  end



  private
  attr_reader :guests_number
  attr_reader :tables_number
  attr_reader :meals_number
  attr_reader :seats_number
  attr_reader :comparator
  attr_reader :guests_array
  attr_accessor :guests_hash
  attr_accessor :snd_meal_array
  attr_accessor :combinations_array

end

test = GuestsToSeats.new(30,5)
test.print_results
