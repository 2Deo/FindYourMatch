User.destroy_all
Match.destroy_all

admin = User.create!(email: "admin@go.com", password: "1234abcd", admin: true)
elvin = User.create!(email: "elvin@go.com", password: "1234abcd")
su = User.create!(email: "su@go.com", password: "1234abcd")
barry = User.create!(email: "barry@go.com", password: "1234abcd")
martin = User.create!(email: "martin@go.com", password: "1234abcd")
sly = User.create!(email: "sly@go.com", password: "1234abcd")
robbie = User.create!(email: "robbie@go.com", password: "1234abcd")

Match.create!([
  {  pair: 1 },
  {  pair: 2 },
  {  pair: 3 },
])
