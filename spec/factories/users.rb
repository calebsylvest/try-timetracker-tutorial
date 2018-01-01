FactoryBot.define do
  factory :user do
    name 'Caleb'
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password 'password'
  end
end
