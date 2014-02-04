FactoryGirl.define do
  factory :user do
    name     "Bryan Heu"
    email    "bryan@anusworld.com"
    password "foobar"
    password_confirmation "foobar"
  end
end