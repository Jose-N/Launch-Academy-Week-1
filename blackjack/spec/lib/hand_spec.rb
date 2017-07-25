require "spec_helper"
require_relative "../../lib/hand.rb"

RSpec.describe Hand do
  describe "#initialize" do
    let (:player) { Hand.new("Jose") }

    context "should create a player and their hand" do
      it "it should have a player name" do
        expect(player.name).to eq("Jose")
      end

      it "it should start with an empty hand" do
        expect(player.hand.size).to eq(0)
      end

      it "it should start with zero points" do
        expect(player.points).to eq(0)
      end
    end
  end

  describe "#recieve_card" do
    let (:player) { Hand.new("Jose") }

    context "should take the card dealt from the deck" do
      it "it should add a card to the players hand" do
        player.recieve_card(Deck.new)

        expect(player.hand.size).to eq(1)
      end

      it "it should announce which player was dealt which card" do
        expect(player.recieve_card(Deck.new)).to eq("Jose was dealt a Ace of Diamond")
     end

      it "it should add the worth of the card to the players points" do
        player.recieve_card(Deck.new)

        expect(player.points).to eq(1)
      end
    end
  end
end
