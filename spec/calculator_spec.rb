require './app/calculator'

RSpec.describe Calculator do
  describe "#sum" do
    context "when sum method is called" do
      it "returns the sum of 2 numbers" do
        expect(Calculator.sum(1,2)).to eq 3
      end
    end
  end
end