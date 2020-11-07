# frozen_string_literal: true

require 'byebug'

module Nmax
  class Application
    attr_accessor :file, :number

    MAX_COUNT = 1000
    WRONG_ARGUMENT = 'wrong argument'
    NOT_SUCH_NUMBER = 'there are no such numbers'

    def initialize(file, number)
      self.file = file
      self.number = number.to_i
    end

    def call
      return puts(WRONG_ARGUMENT) unless number.positive?

      result = search

      return_numbers(result)
    end

    private

    def search
      array_of_integer = Set.new
      file.each_char.with_object([]) do |char, arr|
        if /\d/.match? char
          arr << char
        else
          next if arr.empty?

          number_str = arr.join.to_i
          arr.clear && next if number_str.size >= MAX_COUNT

          array_of_integer << number_str
          arr.clear
        end
      end

      array_of_integer
    end

    def return_numbers(set)
      arr = set.to_a.sort[-number..-1]
      if arr.nil?
        puts NOT_SUCH_NUMBER
      else
        puts(arr.sort.inject { |a, b| a.to_s + ', ' + b.to_s })
      end
    end
  end
end
