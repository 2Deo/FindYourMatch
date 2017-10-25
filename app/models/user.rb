class User < ApplicationRecord
  has_many :matches
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


# 1. Select all the users, not admins
  def self.students
    @students = User.all.select { |user| !user.admin }
  end

# 2. Create a pool of students
  def student_pool
    @student_pool = User.students
    @student_pool_array = []
      @student_pool.each {|student| @student_pool_array << student.id }
      return student_pool
  end



# 3. Select the pair from students
end
