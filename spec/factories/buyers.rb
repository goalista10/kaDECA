FactoryBot.define do
    factory :buyer do
      id { 1 }
      email { 'buyer@gmail.com' }
      password { '123456' }
      name { 'buyer' }
    end
  end
  