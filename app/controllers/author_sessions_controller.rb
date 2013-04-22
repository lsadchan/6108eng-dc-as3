class AuthorSessionsController < ApplicationController
  def new
    @author = Author.new
  end
 
  def create
    @fblogin = false;
    
    if params[:username] != nil
      @author = login(params[:username], params[:password])
    else
      omniauth = Fbuser.omniauth(env["omniauth.auth"])
      @author = omniauth.id
      session[:user_id] = omniauth.id
      @fblogin = true;
    end
    
    if @author
      redirect_back_or_to(root_path, notice: 'You have sucessfully logged in.')
    else
      redirect_to(:login, notice: 'Login unsuccessfull. Please try again.')
    end
  end

  def destroy
    logout
    redirect_to(root_path, message: 'Logged out!')
  end
end
