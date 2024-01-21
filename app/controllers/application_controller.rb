class ApplicationController < ActionController::Base
  helper_method :current_user # Make current_user available as a helper method in the views

  private

  def current_user
    # This is just a stub and it will be replaced with actual
    # authentication logic in future milestones.
    @current_user = User.first
  end

  def set_user
    @user = current_user
  end
end
