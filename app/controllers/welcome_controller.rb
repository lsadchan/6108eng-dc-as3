class WelcomeController < ApplicationController
  require 'flickraw'
  require 'net/http'
  require 'rexml/document'
 
  def index
    @news = News.all
    @clubsessions = Clubsession.all(:order => "starttime ASC")
    
    
    #Weather XML API
    @url = "http://weather.yahooapis.com/forecastrss?w=551155&u=c"
    @xml_data = Net::HTTP.get_response(URI.parse(@url)).body
    @doc = REXML::Document.new(@xml_data)
  end
  
  def learntoski
  end
  
  def aboutus
  end
  
  def faqs
  end

  def contactus
  end
  
  def gallery
    FlickRaw.api_key="12a6b17632a01963cd32e0d19f3a8719"
    FlickRaw.shared_secret="a59f9760b710b4a0"
    
    if session[:photo]
      @token = session[:token]
      flickr.get_access_token(@token['oauth_token'], @token['oauth_token_secret'], params[:oauth_verifier])
      flickr.upload_photo session[:photo], :title => session[:title], :description => session[:description]
      session[:photo] = nil
    end
        
    @photos = Array.new
    @photo_titles = Array.new
    @photo_src = Array.new
    
    
    @list = flickr.photos.search :user_id => '95095707@N03'
    @list.each do |photo|
        @photo_titles.push(photo.title)
        @photos.push(flickr.photos.getSizes :photo_id => photo.id)
    end
    
    @photos.each do |p|
      p.each do |s|
        if s.label == "Medium 800"
          @photo_src.push(s.source)
        end
      end
    end
  
  end
  
  def photo_upload
    FlickRaw.api_key="12a6b17632a01963cd32e0d19f3a8719"
    FlickRaw.shared_secret="a59f9760b710b4a0"
    
    if params[:oauth_verifier]
      @token = session[:token]
      flickr.get_access_token(@token['oauth_token'], @token['oauth_token_secret'], params[:oauth_verifier])
    else
      @token = flickr.get_request_token :oauth_callback => "http://localhost:3000/welcome/gallery"
      session[:token] = @token
      redirect_to flickr.get_authorize_url(@token['oauth_token'], :perms => 'delete')
    end
    
    @photo = params[:gallery][:photo].path
    session[:title] = params[:title]
    session[:description] = params[:description]
    session[:photo] = @photo
  end
  
end
