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
    let (:test_deck) {Deck.new}
    let (:compare_deck) {Deck.new}

    context "should shuffle the deck" do
      it "shuffled deck should not equal the original deck" do
        test_deck.shuffle!

        expect(test_deck).not_to eq(compare_deck)
      end
    end
  end

  describe "#deal" do
    let (:test_deck) {Deck.new}
    let (:compare_deck) {Deck.new}

    context "should deal a card" do
      it "it should return the last card in the deck, and remove it from the deck" do
        expect(test_deck.deal.name).to eq(compare_deck.deck[-1].name)
      end
    end
  end
end
