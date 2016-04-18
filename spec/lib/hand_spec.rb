require 'spec_helper'

RSpec.describe Deck do

  let(:deck) { Deck.new }
  let(:player_hand) { Hand.new }
  let(:computer_hand) { Hand.new }

  describe ".deal_two" do
    it "it should deal 2 cards to player" do
      deck.deal_two(player_hand.cards)
      expect(player_hand.cards.size).to eq(2)
    end
    it "should deal 2 cards to computer" do
      deck.deal_two(computer_hand.cards)
      expect(computer_hand.cards.size).to eq(2)
    end
  end

  let(:hand) { Hand.new}

  describe ".hand_calculator" do
    it " calculates add 2 nib cards" do
      card = Card.new(@rank=7, @suit="♦")
      hand.cards << card
      card = Card.new(@rank=4, @suit="♦")
      hand.cards << card
      expect(hand.hand_calculator).to eq(11)
    end
    it "should calculate add 2 face cards" do
      card = Card.new(@rank="K", @suit="♦")
      hand.cards << card
      card = Card.new(@rank="Q", @suit="♦")
      hand.cards << card
      expect(hand.hand_calculator).to eq(20)
    end
    it "should give Ace value of 11 if that's the best hand" do
      card = Card.new(@rank="A", @suit="♦")
      hand.cards << card
      card = Card.new(@rank="Q", @suit="♦")
      hand.cards << card
      expect(hand.hand_calculator).to eq(21)
    end

    it "should give Ace value of 1 if that's the best hand" do
      card = Card.new(@rank="A", @suit="♦")
      hand.cards << card
      card = Card.new(@rank="Q", @suit="♦")
      hand.cards << card
      card = Card.new(@rank="7", @suit="♦")
      hand.cards << card
      expect(hand.hand_calculator).to eq(18)
    end
  end
end
  # let(:hand) { Hand.new}
  # # describe ".bust?" do
  # #   it "should return true if hand is over 21" do
  # #     card = Card.new(@rank="K", @suit="♦")
  # #     hand.cards << card
  # #     card = Card.new(@rank="Q", @suit="♦")
  # #     hand.cards << card
  # #     binding.pry
  # #     card = Card.new(@rank="7", @suit="♦")
  # #     expect(hand.bust?).to eq(true)
  #
  #   # end
  #
  # end
