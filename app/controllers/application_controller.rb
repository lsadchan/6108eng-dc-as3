class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :Navigation
  def Navigation(n="")
    
    home = ""
    learntoski = ""
    clubsessions = ""
    racingteam = ""
    aboutus = ""
    register = ""
    login = ""
    
    case n
      when "home" then home = "active"
      when "learntoski" then learntoski = "active"
      when "clubsessions" then clubsessions = "active"
      when "racingteam" then racingteam = "active"
      when "aboutus" then aboutus = "active"
      when "register" then register = "active"
      when "login" then login = "active"
    end
    
    if logged_in?
      @nav = '<div class="navigation">
                <ul class="nav nav-pills">
                <li class="'+home+'" ><a href="/welcome/index">Home</a></li>
                <li class="'+learntoski+'" ><a href="/welcome/learntoski">Learn To Ski</a></li>
                <li class="'+clubsessions+'" ><a href="/sessions">Club Sessions</a></li>
                <li class="'+racingteam+'" ><a href="/racingteams">Racing Team</a></li>
                <li class="'+aboutus+'" ><a href="/welcome/aboutus">About Us</a></li>
                <li class="logout-pill '+login+'"><a href="/logout">Logout</a></li>
                <li class="'+register+'" ><a href="/authors/new">Register</a></li>
                </ul>
              </div>'
    else
      @nav = '<div class="navigation">
              <ul class="nav nav-pills">
              <li class="'+home+'" ><a href="/welcome/index">Home</a></li>
              <li class="'+learntoski+'" ><a href="/welcome/learntoski">Learn To Ski</a></li>
              <li class="'+clubsessions+'" ><a href="/sessions">Club Sessions</a></li>
              <li class="'+racingteam+'" ><a href="/racingteams">Racing Team</a></li>
              <li class="'+aboutus+'" ><a href="/welcome/aboutus">About Us</a></li>
              <li class="login-pill '+login+'"><a href="/login">Login</a></li>
              <li class="'+register+'" ><a href="/authors/new">Register</a></li>
              </ul>
            </div>'
    end
    
    return @nav.html_safe
  end
end
