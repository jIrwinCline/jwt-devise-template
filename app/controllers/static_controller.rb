
class StaticController < ApplicationController
    # before_action :authenticate_user!
    Dotenv.load
    def home
        render json: { status: ENV["SECRET"] }
    end
end