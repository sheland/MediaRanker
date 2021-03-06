class ApplicationController < ActionController::Base
  before_action :find_user
  private

  def find_user #will know the current logged-in user for every view page
    @current_user = User.find_by(id: session[:user_id])
  end
end
