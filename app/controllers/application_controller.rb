class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  include ActionController::StrongParameters
  include SimpleTokenAuthentication::ActsAsTokenAuthenticationHandler
  
  respond_to :json

  acts_as_token_authentication_handler_for User

end
