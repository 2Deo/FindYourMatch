Student.destroy_all
User.destroy_all

elvin = User.create!(email: "elvin@go.com", password: "1234abcd")
su = User.create!(email: "su@go.com", password: "1234abcd")
admin = User.create!(email: "admin@go.com", password: "1234abcd", admin: true)

elvin = Student.create!(name: "elvin", user: elvin)
su = Student.create!(name: "su", user: su)
admin = Student.create!(name: "admin", user: admin)
