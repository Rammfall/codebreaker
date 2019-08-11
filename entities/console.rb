class Console
  include Validation

  def initialize
    @commands = %w[start rules stats exit]
  end

  def init
    puts I18n.t(:greetings)

    loop do
      answer = gets.chomp!

      start if answer == 'start'
    end
  end

  def start
    loop do
      answer = gets.chomp!


    end
  end
end
