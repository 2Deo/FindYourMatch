User.destroy_all

admin = User.create!(name:"Admin",email: "admin@go.com", password: "1234abcd", admin: true)
elvin = User.create!(name:"Elvin",email: "elvin@go.com", password: "1234abcd")
su = User.create!(name:"Su",email: "su@go.com", password: "1234abcd")
barry = User.create!(name:"Barry",email: "barry@go.com", password: "1234abcd")
martin = User.create!(name:"Martin",email: "martin@go.com", password: "1234abcd")
sly = User.create!(name:"Sly",email: "sly@go.com", password: "1234abcd")
robbie = User.create!(name:"Robbie",email: "robbie@go.com", password: "1234abcd")
