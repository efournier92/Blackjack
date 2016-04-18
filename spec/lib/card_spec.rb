require "spec_helper"

RSpec.describe Card do
  describe ".facecard?" do
    it "should return true if card is a facecard" do
      card = Card.new('K', '♦')
      expect(card.facecard?).to eq(true)
    end
    it "should return true if card is a facecard" do
      card = Card.new(@rank=9, @suit="♦")
      expect(card.facecard?).to eq(false)
    end
  end
end
