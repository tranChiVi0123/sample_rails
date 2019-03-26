User.create!(name:  "Nguyen Thanh Huyen",
             email: "judyhuyen17498@gmail.com",
             password:              "123456789",
             password_confirmation: "123456789",
             admin: true, 
             activated: true,
             activated_at: Time.zone.now)
User.create!(name:  "Pham Van Nam",
             email: "example@railstutorial.org",
             password:              "123456789",
             password_confirmation: "123456789",
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end