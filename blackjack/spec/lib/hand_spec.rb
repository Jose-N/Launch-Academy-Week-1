require "spec_helper"
require_relative "../../lib/hand.rb"

RSpec.describe Hand do
  describe "#initialize" do
    context "should create a player and their hand" do
      it "it should have a player name"
      it "it should start with an empty hand"
      it "it should start with zero points"
    end
  end

  describe "#recieve_card" do
    context "should take the card dealt from the deck" do
      it "it should add a card to the players hand"
      it "it should announce which player was dealt which card"
      it "it should add the worth of the card to the players points"
    end
  end
end
