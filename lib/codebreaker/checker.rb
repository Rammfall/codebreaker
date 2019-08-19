# frozen_string_literal: true

require_relative 'config'

module Codebreaker
  # Check code and return answer
  class Checker
    def initialize(secret, code)
      valid_code code
    end

    def valid_code(code)
      raise ArgumentError if code.size == SIZE && valid_numbers(code)
    end

    def valid_numbers(code)
      code.split('').each do |letter|
        return false unless letter.to_i.between?(NUMBERS[:min], NUMBERS[:max])
      end

      true
    end
  end
end
