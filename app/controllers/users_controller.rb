class UsersController < ApplicationController
  before_action :authenticate_user!


      def home
        @users = User.all
        #@matches = Match.all
      end

      def show
        @user = User.find(params[:id])
        @students_pool = User.students
        #@matches = Match.new
      end

      def update
        @user = User.find(params[:id])
        @user.toggle!(:admin)
        redirect_to root_path, :notice => "User promoted"
      end

      private

      def authenticate
        @user = current_user
          if !@user.is_admin?
            redirect_to root_path, :alert => "You do not have access to this page!"
          end
      end

      def require_login
        unless user_signed_in?
          redirect_to root_path, :alert => "Please to login-in to view this page!"
        end
      end

      def validate_user
        @user = User.find(params[:id])
        unless @user == current_user
          redirect_to root_path, :alert => "You may only view your own matches."
        end
      end
  end
