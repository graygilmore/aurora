require "rails_helper"

RSpec.describe Product, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price_cents }

  it do
    # TODO
    # Rspec 3.0.0 broke how numericality was tested. This test
    # should be turned back on when this is fixed.
    pending("Waiting for Rspec to fix numericality tests")
    should validate_numericality_of(:price_cents).
      is_greater_than_or_equal_to(0).
      only_integer
  end
end
