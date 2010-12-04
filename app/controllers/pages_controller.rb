class PagesController < ApplicationController
  
  #in ruby, the method-definition will do nothing but in rails the contact method fetches the corresponding view
  def home
    @title = "Home"
  end
  
  def contact
    @title = "Contact" 
  end
  
  def about
    @title = "About"
  end
  
end
