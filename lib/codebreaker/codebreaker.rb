module Codebreaker
  class Error < StandardError; end

  # Codebreaker, the logic game
  class Codebreaker

    def initialize(difficult)
      valid_difficult difficult

      @difficult = difficult
      @code = Maker.new.code
      @attempts = DIFFICULT[difficult].attempts
      @hints = DIFFICULT[difficult].hints
    end

    def valid_difficult(difficult)
      raise Error unless DIFFICULT.include? difficult
    end
  end
end
