class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :matches, dependent: :destroy

# 1. Select all the users, not admins

       def self.students
         @students = User.all.select { |user| !user.admin }
       end

# 2. Create a pool of students

      def student_pool
          @student_pool = User.students

          @student_pool_array = []
          @student_pool.each {|student| @student_pool_array << student.name }
         return student_pool

       end

# 3. Select the pair from students
      def generate_matched_pairs
        @sliced_student = @student_pool_array.slice!(0)
        @sliced_student_array = []
        @sliced_student_array << @sliced_student   #This is pushing the string of the sliced student to an array...

        @matched_pairs_array = @student_pool.product(@sliced_student_array)
        

      end

      def generate_sliced_pairs
        @day_one = @matched_pairs_array.slice!(0)
        @day_two = @matched_pairs_array.slice!(0)
        @day_three = @matched_pairs_array.slice!(0)
        @day_four = @matched_pairs_array.slice!(0)
        @day_five = @matched_pairs_array.slice!(0)
      end

# 4. Slice our pairs



      def is_admin?
        self.admin?
      end

end
