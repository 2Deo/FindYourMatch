module Api
  class BaseController < ApplicationController
    skip_before_action :verify_authenticity_token
    protect_from_forgery with: :null_session
    before_action :authenticate

    def authenticate
      admin_token = request.headers['X-USER-TOKEN']
      if admin_token
        @admin = Admin.find_by_token(admin_token)
        return unauthorize if @admin.nil?
      else
        return unauthorize
      end
    end

    def unauthorize
      head :unauthorized
      return false
    end
  end
end
