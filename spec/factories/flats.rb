# spec/factories/todos.rb
FactoryBot.define do
  factory :user do
    name { Faker::Lorem.word }
  end
end