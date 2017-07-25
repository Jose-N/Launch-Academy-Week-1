require "spec_helper"
require_relative "../../lib/deck.rb"

RSpec.describe Deck do
  describe "#initialize" do
    let (:test_deck) {Deck.new}

    context "should create a new deck of cards" do
      it "it should have 52 cards total" do
        expect(test_deck.deck.size).to eq(52)
      end

      it "it should have 13 cards of heart suit" do
        heart = []
        test_deck.deck.each do |card|
          if card.suit == "Heart"
            heart << card
          end
        end

        expect(heart.size).to eq(13)
      end

      it "it should have 13 cards of spade suit" do
        spade = []
        test_deck.deck.each do |card|
          if card.suit == "Spade"
            spade << card
          end
        end

        expect(spade.size).to eq(13)
      end

      it "it should have 13 cards of club suit" do
        club = []
        test_deck.deck.each do |card|
          if card.suit == "Club"
            club << card
          end
        end

        expect(club.size).to eq(13)
      end

      it "it should have 13 cards of diamond" do
        diamond = []
        test_deck.deck.each do |card|
          if card.suit == "Diamond"
            diamond << card
          end
        end

        expect(diamond.size).to eq(13)
      end
    end
  end

  describe "#shuffle!" do
    context "should shuffle the deck" do
      it "shuffled deck should not equal the original deck"
    end
  end

  describe "#deal" do
    context "should deal a card" do
      it "it should return the first card in the deck"
      it "it should remove that card from the deck"
    end
  end
end
