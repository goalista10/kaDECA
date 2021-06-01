FactoryBot.define do
    factory :seller do
        id { 1 }
        email { 'seller@gmail.com' }
        password { '123456' }
        name { 'seller' }
        contact { '123' }
        blk { '1' }
        lot { '2' }
        fb { 'facebook.com' }
    end
  end
  