class PagesController < ApplicationController
  before_action :authenticate_user!

    def home
      @users = User.all
    end

    def show
      @match 
    end
  end
