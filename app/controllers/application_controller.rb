class ApplicationController < ActionController::Base
  protect_from_forgery
end

def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
end