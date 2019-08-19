require_relative 'spec_helper'

RSpec.describe Codebreaker::Checker do
  let(:true_matrix) do
    [
      ['6543', '5643', '++--'],
      ['6543', '6411', '+-'],
      ['6543', '6544', '+++'],
      ['6543', '3456', '----'],
      ['6543', '6666', '+'],
      ['6543', '2666', '-'],
      ['6543', '2222', ''],
      ['6666', '1661', '++'],
      ['1234', '3124', '+---'],
      ['1234', '1524', '++-'],
      ['1234', '1234', '++++']
    ]
  end

  let(:false_matrix) do
    %w[124214 7543 fsfs]
  end

  it 'Validation shouldnt approve this' do
    false_matrix.map do |code|
      expect {Codebreaker::Checker.new('1212', code)}.to raise_error(ArgumentError)
    end
  end

  # it 'Matrix should be return right answer' do
  #   true_matrix.map do |elem|
  #     result = Codebreaker::Checker.new(elem[0], elem[1])
  #
  #     expect(result).to eq(elem[2])
  #   end
  # end
end
