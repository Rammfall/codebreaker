require_relative 'config'

module Codebreaker
  # Check code and return answer
  class Checker
    attr_accessor :match

    def initialize(secret, code)
      valid_code(code)

      @secret_code = secret.split('')
      @user_code = code.split('')

      @match = ''

      check
    end

    def check
      @secret_code.zip(@user_code).map do |secret_number, user_number|
        if secret_number == user_number
          @match << SYMBOLS[:positive]
        end
      end
    end

    def valid_code(code)
      raise ArgumentError unless code.size == SIZE && valid_numbers(code)
    end

    def valid_numbers(code)
      code.split('').each do |letter|
        return false unless letter.to_i.between?(NUMBERS[:min], NUMBERS[:max])
      end

      true
    end
  end
end
