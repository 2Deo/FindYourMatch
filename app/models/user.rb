class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :matches, dependent: :destroy

# 1. Select all the users, not admins

       def self.students
         @students = User.all.select { |user| !user.admin }
       end

# 2. Create a pool of students by name
      def self.student_pool
          User.students
          @student_pool_array = []
          @students.each {|student| @student_pool_array << student.name}
        end

# 3. Generate the pairs
      def self.generate_pairs
        student_pool
        @sliced_student = @student_pool_array.slice!(0)

        @sliced_student_array = []
        @sliced_student_array << @sliced_student   #This is pushing the string of the sliced student to an array...

        @matched_pairs_array = @student_pool_array.product(@sliced_student_array)
        return @matched_pairs_array
      end



      def is_admin?
        self.admin?
      end

end
