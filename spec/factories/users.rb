FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "Test User #{n}" }
    bio { 'Hello, I am....' }
  end
end
