# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Codebreaker::Maker do
  describe 'Maker work right, if' do
    it 'The code must be size 4' do
      code = Codebreaker::Maker.new.code

      expect(code.size).to eq(4)
    end

    it 'The range of numbers should be from 1 to 6' do
      code = Codebreaker::Maker.new.code

      code.split('').map do |number|
        expect(number.to_i).to be_between(1, 6)
      end
    end

    it 'Maker returns string' do
      code = Codebreaker::Maker.new.code

      expect(code.class).to eq(String)
    end
  end
end
