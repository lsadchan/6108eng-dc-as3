class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user
  def current_user
    @current_user ||= Fbuser.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :Navigation
  def Navigation(n="")
    
    home = ""
    learntoski = ""
    clubsessions = ""
    racingteam = ""
    aboutus = ""
    register = ""
    login = ""
    gallery = ""
    
    case n
      when "home" then home = "active"
      when "learntoski" then learntoski = "active"
      when "clubsessions" then clubsessions = "active"
      when "racingteam" then racingteam = "active"
      when "aboutus" then aboutus = "active"
      when "register" then register = "active"
      when "login" then login = "active"
      when "gallery" then gallery = "active"
    end
    
    if logged_in?
      @nav = '<div class="navigation">
                <ul class="nav nav-pills">
                <li class="'+home+'" ><a href="/welcome/index">Home</a></li>
                <li class="'+learntoski+'" ><a href="/welcome/learntoski">Learn To Ski</a></li>
                <li class="'+clubsessions+'" ><a href="/clubsessions">Club Sessions</a></li>
                <li class="'+racingteam+'" ><a href="/racingteams">Racing Team</a></li>
                <li class="'+gallery+'" ><a href="/welcome/gallery">Gallery</a></li>
                <li class="'+aboutus+'" ><a href="/welcome/aboutus">About Us</a></li>
                <li class="logout-pill '+login+'"><a id="logout-btn" href="/logout">Logout</a></li>
                <li class="'+register+'" ><a href="/register">+ New Member</a></li>
                </ul>
              </div>'
    else
      @nav = '<div class="navigation">
              <ul class="nav nav-pills">
              <li class="'+home+'" ><a href="/welcome/index">Home</a></li>
              <li class="'+learntoski+'" ><a href="/welcome/learntoski">Learn To Ski</a></li>
              <li class="'+clubsessions+'" ><a href="/clubsessions">Club Sessions</a></li>
              <li class="'+racingteam+'" ><a href="/racingteams">Racing Team</a></li>
              <li class="'+gallery+'" ><a href="/welcome/gallery">Gallery</a></li>
              <li class="'+aboutus+'" ><a href="/welcome/aboutus">About Us</a></li>
              <li class="login-pill '+login+'"><a id="login-btn" href="/login">Login</a></li>
              <li class=""><a id="fbSignIn" href="/auth/facebook">Sign in with Facebook</a></li>
              </ul>
            </div>'+
            
            '<div id="login-box">
              <form id="login_form_async" method="post" action="/author_sessions">
                <input type="text" name="username" id="username_async" placeholder="Username" />
                <input type="password" name="password" id="password_async" placeholder="Password" />
                <button type="submit" name="login-btn-async" id="login-btn-async" class="blue-pill">Login</button>
              </form>
            </div>'
    end
    
    return @nav.html_safe
  end
end
