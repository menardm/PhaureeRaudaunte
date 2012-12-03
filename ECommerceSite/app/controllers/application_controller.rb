class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_sudo
    require 'digest'
    
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' &&
      Digest::SHA1.hexdigest('996' + password) == 'fec881f75b37c2958e8e3c5cbe4710301e4c04e3'
    end
  end
end
