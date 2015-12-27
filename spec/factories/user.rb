FactoryGirl.define do
  factory :user do
    name "Jane Doe"
    email "test@example.com"
    password "testing"
  end

  factory :admin, parent: :user do
    admin true
  end
end
