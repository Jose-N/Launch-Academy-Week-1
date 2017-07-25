require "spec_helper"
require_relative "../../lib/deck.rb"

RSpec.describe Deck do
  describe "#initialize" do
    let (:test_deck) {Deck.new}

    context "should create a new deck of cards" do
      it "it should have 52 cards total"
      it "it should have 26 black cards"
      it "it should have 26 red cards"
      it "it should have 13 cards of heart suit"
      it "it should have 13 cards of spade suit"
      it "it should have 13 cards of club suit"
      it "it should have 13 cards of diamond"
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
