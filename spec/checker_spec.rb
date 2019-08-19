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

  it 'Matrix should be return right answer' do
    true_matrix.map do |elem|
      result = Codebreaker::Checker.new(elem[0], elem[1])

      expect(result.match).to eq(elem[2])
    end
  end
end
