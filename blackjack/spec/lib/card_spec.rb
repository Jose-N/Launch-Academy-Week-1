require "spec_helper"
require_relative "../../lib/card.rb"

RSpec.describe Card do
  describe "#initialize" do
    let (:test_card) {Card.new("Heart", "Queen", 10, "Red")}

    context "creates a new card" do
      it "should have a suit" do
        expect(test_card.suit).to eq("Heart")
      end

      it "should have a name" do
        expect(test_card.name).to eq("Queen")
      end

      it "should have a value" do
        expect(test_card.value).to eq(10)
      end

      it "should have a color" do
        expect(test_card.color).to eq("Red")
      end
    end
  end
end
