class WelcomeController < ApplicationController

  before_action :authenticate_user!

  #Landing page
  def index
  end

  #Search users on the basis of name or email
  def search
    conditions = []
    conditions << "users.name LIKE '%#{params[:search_value]}%'"
    conditions << "users.email LIKE '%#{params[:search_value]}%'"
    @search_result = User.where(conditions.join(" OR "))
  end
end
