require "rails_helper"

RSpec.describe User, type: :model do
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of(:email).case_insensitive }

  context "when a mixed case email is provided" do
    let(:email) { "TestingABC@EXampLE.com" }
    let(:user) { FactoryGirl.build :user, email: email }

    it "downcases the email address" do
      user.save!
      expect(user.reload.email).to eq email.downcase
    end
  end
end
