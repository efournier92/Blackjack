require_relative "card"
require_relative "deck"
require_relative "hand"

class Blackjack
  SEP = '************************'

  attr_reader :deck
  attr_accessor :player_hand, :computer_hand

  def initialize
    @deck = Deck.new
    @player_hand = Hand.new
    @computer_hand = Hand.new
  end

  def play
    puts "#{SEP}\n       BLACKJACK\n#{SEP}\n\n"
    deck.deal_two(player_hand.cards)
    deck.deal_two(computer_hand.cards)

    player_hand.printer('PLAYER')
    puts "\n#{SEP}\n\n"

    computer_hand.printer('COMPUTER')
    print "\n#{SEP}\n"

    user_input = nil
    print "H or S?\n> "
    user_input = gets.chomp

    until user_input == 'S'
      if user_input == 'H'
        player_hand.cards << deck.cards.pop
        player_hand.printer('PLAYER')
      end
      puts "#{SEP}\n"
      print "H or S?\n> "
      user_input = gets.chomp
    end
    puts "#{SEP}\n"

    while computer_hand.hand_calculator < 17
      computer_hand.cards << deck.cards.pop
      computer_hand.printer('COMPUTER')
    end
    puts "#{SEP}\n\n"
    puts "PLAYER HAS #{player_hand.hand_calculator} POINTS"
    puts "COMPUTER HAS #{computer_hand.hand_calculator} POINTS"
    puts "\n#{SEP}\n"
    # binding.pry
    if player_hand.bust?
      puts 'PLAYER BUSTS'
      puts 'COMPUTER WINS!'
    elsif computer_hand.bust?
      puts 'COMPUTER BUSTS'
      puts 'PLAYER WINS!'
    elsif player_hand.hand_calculator > computer_hand.hand_calculator
      puts 'PLAYER WINS'
    else
      puts'COMPUTER WINS!'
    end
    puts "#{SEP}"
  end
end

blackjack = Blackjack.new
blackjack.play
