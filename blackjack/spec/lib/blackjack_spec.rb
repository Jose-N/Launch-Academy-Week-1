require "spec_helper"
require_relative "../../lib/blackjack.rb"

RSpec.describe Game do
  describe "#initialize" do
    context "should set up a game" do
      it "it should create a deck"
      it "it should create a dealer"
      it "it should create a player"
      it "it should shuffle the deck"
    end
  end

  describe "#play" do
    context "start game by dealng to cards to each player" do
      it "player should have two cards"
      it "dealer should have two cards"
    end

    context "dealer should hit until points more than 17" do
    end

    context "should play the game until someone wins" do
    end
  end
end
