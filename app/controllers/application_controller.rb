class ApplicationController < ActionController::Base
before_action :require_user_logged_in, only: [:index, :show]
     
    
     include SessionsHelper 
     include Pagy::Backend 
     
    def require_user_logged_in
        unless logged_in?
            redirect_to login_url
        end
    end

end
