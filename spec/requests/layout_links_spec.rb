require 'spec_helper'

describe "LayoutLinks" do
  it "should have a homepage at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Contact page at '/'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have a Team page at '/team'" do
    get '/team'
    response.should have_selector('title', :content => "Team")
  end
  
  it "should have a Blog at '/blog'" do
    get '/blog'
    response.should have_selector('title', :content => "blog")
  end
  
  it "should have an Artists page at '/artists'" do
    get '/artists'
    response.should have_selector('title', :content => "artists")
  end
  
  it "should have a page for new talent to apply at '/apply'" do
    get '/apply'
    response.should have_selector('title', :content => "artists")
  end
  
  it "should have a page to sign up on" do
    get '/signup'
    response.should have_selector('title', :content => "Sign Up")
  end
end
