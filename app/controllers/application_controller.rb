class ApplicationController < ActionController::Base
  protect_from_forgery

  def facebook_app_id
    SETTINGS[:facebook][:app_id]
  end

  def facebook_app_secret
    SETTINGS[:facebook][:app_secret]
  end

  def domain
    SETTINGS[:domain]
  end
end
