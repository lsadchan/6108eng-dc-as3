class WelcomeController < ApplicationController
  def index
    @news = News.all
    @sessions = Session.all(:order => "starttime ASC")
  end
  
  def learntoski
  end
  
  def aboutus
  end
  
  def faqs
  end

  def contactus
  end
end
