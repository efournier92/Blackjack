require "spec_helper"

RSpec.describe Deck do
  let(:deck) { Deck.new("Ringo") }
  describe "#initialize" do
    it "should have a reader for cards" do
      expect(deck.cards).not_to be_empty
    end
  end

  "Card.initialize"
  describe ".deal_one" do
    let(:hand) { Hand.new }
    it "should deal_one one card at a time into hand" do
      expect(deck.deal_one(hand.cards).size).to eq(1)

    end
  end

  describe ".build_deck" do
    it "should start with 52 cards" do
      expect(deck.cards.size).to eq 52
    end
    it "should have 52 unique cards" do
      expect(deck.cards.uniq.count).to eq 52
    end
  end
end
