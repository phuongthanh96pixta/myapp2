User.create!(email: "thanh@pixta.com",
             password:              "123456",
             password_confirmation: "123456")

99.times do |n|
  email = "thanh-#{n+1}@pixta.com"
  password = "123456"
  User.create!(
               email: email,
               password:              password,
               password_confirmation: password)
end