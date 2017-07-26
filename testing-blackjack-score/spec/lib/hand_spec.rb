require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }
  # You can add more sample hands

  describe "#calculate_hand" do
    # We have included some example tests below. Change these once you get started!

    it "passes" do
      # Use the RSpec keyword `expect`, as it appears below, to test your assertions
      expect(1).to eq(1)
    end

    it "fails" do
      expect(false).to eq true
    end

    # Add your remaining tests here.

  end
end
