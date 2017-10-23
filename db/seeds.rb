Teacher.delete_all
Student.delete_all
User.delete_all


#USERS SEED
jo = User.create!(email: "jo@ibm.com", password: "abcd1234")
mo = User.create!(email: "mo@ibm.com", password: "abcd1234")
mary = User.create!(email: "mary@ibm.com", password: "abcd1234")
steve = User.create!(email: "steve@ibm.com", password: "abcd1234")
robert = User.create!(email: "robert@ibm.com", password: "abcd1234")
anne = User.create!(email: "anne@ibm.com", password: "abcd1234")
ben = User.create!(email: "ben@ibm.com", password: "abcd1234")
debbie = User.create!(email: "debbie@ibm.com", password: "abcd1234")


#TEACHERS
ben = Teacher.create!(first_name: "Ben", last_name: "Stevenson")
debbie = Teacher.create!(first_name: "Debbie", last_name: "Harrison")

#STUDENT SEEDS
mary = Student.create!(first_name: "Mary", last_name: "Thompson", teacher: ben, user: mary)
steve = Student.create!(first_name: "Steve", last_name: "Jobs", user: steve, teacher: ben)
robert = Student.create!(first_name: "Robert", last_name: "Carlye", user: robert, teacher: debbie)
anne = Student.create!(first_name: "Anne", last_name: "Higgins", user: anne, teacher: debbie)
