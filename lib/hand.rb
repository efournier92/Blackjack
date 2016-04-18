require_relative 'deck'
require_relative 'card'

class Hand
  attr_accessor :cards, :score
  def initialize
    @cards = []
  end

  def hand_calculator
    score = 0
    @cards.each do |card|
      if card.facecard? == false
        score += card.rank.to_i
      elsif
        score += 10
      end
    end
    @cards.each do |card|
      if card.rank == 'A'
        if score + 11 <= 21
          score += 11
        else
          score += 1
        end
      end
    end
    score
  end

  def bust?
    self.hand_calculator > 21
  end

  def printer(player)
    @cards.each do |card|
      puts "#{player} HAS #{card.rank}#{card.suit}"
    end
  end
end
