#require "spec_helper"
require_relative "../../lib/blackjack.rb"

RSpec.describe Play do
  describe "#initialize" do
    context "should set up a game" do
      it "it should create a deck"
      it "it should create a dealer"
      it "it should create a player"
      it "it should shuffle the deck"
    end
  end

  describe "#play" do
    context "recieved two aces" do
      it "hand points should equal 12" do
        new_hand = Hand.new("Jose", [Card.new('Diamond', 'Ace', 11), Card.new('Diamond', 'Ace', 11)])
        new_hand.check_points

        expect(new_hand.points).to eq(12)
      end
    end
  end
end
