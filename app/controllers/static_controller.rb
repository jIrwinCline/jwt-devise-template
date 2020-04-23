
class StaticController < ApplicationController
    Dotenv.load
    def home
        render json: { status: ENV["SECRET"] }
    end
end