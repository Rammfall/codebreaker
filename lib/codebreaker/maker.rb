# frozen_string_literal: true

require_relative 'config'

module Codebreaker
  # Make code for game
  class Maker
    attr_reader :code

    def initialize
      min = NUMBERS[:min]
      max = NUMBERS[:max]
      code = []

      SIZE.times do
        code.push(rand(min..max))
      end

      @code = code.join.to_s
    end
  end
end
