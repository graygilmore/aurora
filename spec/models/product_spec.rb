require "rails_helper"

RSpec.describe Product, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price_cents }

  describe "validations" do
    let(:product) { Product.new name: "Product", price_cents: price }
    subject { product.save }

    context "when the price is 0 or greater" do
      let(:price) { 100 }
      it "should create a new product" do
        expect(product).to be_valid
      end
    end

    context "when the price less than 0" do
      let(:price) { -5 }
      it "should create a new product" do
        expect(product).to_not be_valid
      end
    end
  end
end
