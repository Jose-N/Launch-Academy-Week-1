require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }
  let(:ace_should_be_one) { Hand.new([Card.new("♦",10), Card.new("♥","J"), Card.new("♥","A")]) }
  let(:ace_should_be_eleven) { Hand.new([Card.new("♦",10), Card.new("♥","A")]) }
  # You can add more sample hands

  describe "#calculate_hand" do
    context "shoud be able to calculate value of hand" do
      it "it should be able to calculate value of two cards" do
        expect(hand.calculate_hand).to eq(20)
      end
    end

    context "should be able to change value of Ace to 1 or 11 depending on value of hand" do
      it "it should change the value of the Ace to 1 if the value of the hand would be over 21 if Ace was worth 11" do
        expect(ace_should_be_one.calculate_hand).to eq(21)
      end

      it "it should change the value of the Ave to 11 if the value of the hand wont go over 21" do
        expect(ace_should_be_eleven.calculate_hand).to eq(21)
      end
    end
  end
end
