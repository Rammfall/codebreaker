module Validation
  def name(name)
    if name.size < 3
      puts 'Minimum 3 symbols'
      false
    elsif name.size > 20
      puts 'Maximum 20 symbols'
      false
    else
      name
    end
  end

  def guess(guess)
    if guess.size != 4
      puts 'You should to enter 4 digits'
      false
    elsif checker guess
      puts 'You can use digits from 0 to 6'
      false
    else
      guess
    end
  end

  def checker(num)
    num.each do |sym|
      return true if sym.to_i > 6 && sym.to_i.negative?
    end

    false
  end
end
