class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def facecard?
    ['J', 'Q', 'K'].include?(rank)
  end
end
