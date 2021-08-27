FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {'1a' + Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name_kanji       {Faker::Internet.username(specifier: '山田')}
    first_name_kanji      {Faker::Internet.username(specifier: '一郎')}
    last_name_kana        {Faker::Internet.username(specifier: 'ヤマダ')}
    first_name_kana       {Faker::Internet.username(specifier: 'イチロウ')}
    birthday              {Faker::Date.birthday}
  end
end