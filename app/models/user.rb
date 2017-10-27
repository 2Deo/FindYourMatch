class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :matches, dependent: :destroy

# 1. Select all the users, not admins

     def self.students
       @students = User.all.select { |user| !user.admin }
       #@students.pluck(:name)
     end

     #def remove_first_student
      #  @sliced_student = @students.slice!(0)
      #  @sliced_student_array = []
        #@sliced_student_array << @sliced_student   #This is pushing the string of the sliced student to an array...
     #end

# 3. Generate the pairs
    def self.generate_pairs

    end

    # generate_sliced_pairs
      #@day_one = @matched_pairs_array.slice!(0)
      #@day_two = @matched_pairs_array.slice!(0)
      #@day_three = @matched_pairs_array.slice!(0)
      #@day_four = @matched_pairs_array.slice!(0)
      #@day_five = @matched_pairs_array.slice!(0)
    #end





    def is_admin?
      self.admin?
    end

end
