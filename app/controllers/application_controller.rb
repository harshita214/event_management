class ApplicationController < ActionController::Base
    include Pundit
  
    def pundit_user
      current_user # Adjust this if you're using a different method to access the current user
    end
  
    # ...
  end
  