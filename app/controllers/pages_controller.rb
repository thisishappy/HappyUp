class PagesController < ApplicationController
  
  #in ruby, the method-definition will do nothing but in rails the contact method fetches the corresponding view
  def home
    @title = "Home"
  end
  
  def music
    @music = "Music"
  end
  
  def events
    @events = "Events"
  end
  
  def blog
    @blog = "Blog"
  end
  
  def team
    @title = "Team"
  end
  
  def contact
    @title = "Contact" 
  end
  
  def artists
    @artists = "Artists"
  end
  
  def apply
    @apply = "Apply"
  end
  
  
  
end
