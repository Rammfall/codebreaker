# frozen_string_literal: true

module Codebreaker
  SIZE = 4

  NUMBERS = {
    min: 1,
    max: 6
  }.freeze

  SYMBOLS = {
    positive: '+',
    negative: '-'
  }.freeze

  DIFFICULT = {
    easy: {
      attempts: 15,
      hints: 2
    },
    medium: {
      attempts: 10,
      hints: 1
    },
    hell: {
      attempts: 5,
      hint: 1
    }
  }.freeze
end
