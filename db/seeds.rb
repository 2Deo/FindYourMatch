Teacher.delete_all
Student.delete_all
User.delete_all


#USERS SEED
jo = User.create!(email: "jo@codaisseurbnb.com", password: "abcd1234")
mo = User.create!(email: "mo@codaisseurbnb.com", password: "abcd1234")

#STUDENT SEEDS
mary = Student.create!(first_name: "Mary", last_name: "Thompson")
steve = Student.create!(first_name: "Steve", last_name: "Jobs")
robert = Student.create!(first_name: "Robert", last_name: "Carlye")
anne = Student.create!(first_name: "Anne", last_name: "Higgins")

#TEACHERS
ben = Teacher.create!(first_name: "Ben", last_name: "Stevenson")
debbie = Teacher.create!(first_name: "Debbie", last_name: "Harrison")
