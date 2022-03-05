FactoryBot.define do
  factory :quote do
    trait :insert do
      name { 'Test Quote 1' }
    end
    trait :delete do
      name { 'Destroy test' }
    end
  end
end
