class Deck
  attr_accessor :cards

  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  def initialize
    @cards = build_deck
  end

  def deal_one(hand)
    hand << @cards.pop
  end

  def deal_two(hand)
    2.times do
      hand << @cards.pop
    end
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards = cards.shuffle!
    @cards = cards
  end
end
