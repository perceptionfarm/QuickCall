class LoginController < ApplicationController
    require 'digest/md5'

    def index
        
    end

    def verify
        @f = Operator.where(:username => params[:username], 
                           :password => Digest::MD5.hexdigest(params[:password])) 
        
        if @f.size > 0
            session[:user] = @f.first 
            session[:loggedin] = true

            # render :partial => "gui/userbox"
            redirect_to welcome_path
        else
            session[:loginfailed] = true
            redirect_to login_path
        end
    end

    def logout
        session[:loggedin] = false
        redirect_to login_path
    end

end
