module Data

  class CreateGuestsArray

    def initialize(guests_number)
      @guests_number = guests_number
    end

    def create
      @guests_array = Array.new(guests_number) { |i| i+1 }
    end

    private
    attr_reader :guests_number
    attr_accessor :guests_array
  end

end
