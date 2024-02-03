class CustomFailureApp < Devise::FailureApp
  def redirect_url
    root_path
  end

  def respond
    if http_auth?
      http_auth
    else
      flash[:alert] = 'You need to sign in or sign up before continuing.'
      redirect
    end
  end

  private

  def flash
    request.flash
  end
end
