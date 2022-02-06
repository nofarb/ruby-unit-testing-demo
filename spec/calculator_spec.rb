require './app/calculator'
require './app/custom_exceptions/not_supported_data'

RSpec.describe Calculator do
  describe "#sum" do
    context "when sum method is called" do
      it "returns the sum of 2 numbers" do
        expect(Calculator.sum(1,2)).to eq 3
      end

      context "when input is NOT a number" do
        it "returns a NotSupportedData exception" do
          expect { Calculator.sum("a", 2) }.to raise_error(NotSupportedData)
        end
      end
    end
  end
end