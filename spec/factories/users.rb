FactoryGirl.define do
  factory :user do
    user_name('captain')
    first_name('Marty')
    last_name('Kovach')
    email('Morty@m.com')
    password('Morty32')
      is_admin('false')

  end
end
