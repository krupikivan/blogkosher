class AuthController < ApplicationController

    def signup
        @user = User.new
    end

end
