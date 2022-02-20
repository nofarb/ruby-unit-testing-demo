require './app/calculator'
require './app/custom_exceptions/not_supported_data'

RSpec.describe Calculator do
  describe "#sum(num1, num2)" do
    context "when inputs are numbers" do
      it "returns the sum of 2 numbers" do
        expect(Calculator.sum(1,2)).to eq 3
      end
    end

    context "when 1 or 2 inputs is NOT a number" do
      it "returns a NotSupportedData exception" do
        expect { Calculator.sum("a", 2) }.to raise_error(NotSupportedData)
      end
    end
  end
end