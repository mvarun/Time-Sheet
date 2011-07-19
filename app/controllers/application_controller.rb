# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
   include AuthenticatedSystem
  helper :all # include all helpers, all the time
 protect_from_forgery :secret => '6de86b5566d7598f57e757960760acd2'  # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
