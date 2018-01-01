FactoryBot.define do
  factory :account do
    sequence(:subdomain) { |n| "subdomain#{n}" }
    association :owner, factory: :user
    owner_id 1
  end
end
