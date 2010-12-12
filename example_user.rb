class User
  #below the attr creates getter and setter methods to put and retrieve data into the database.
  attr_accessor :first_name, :last_name, :email, :artists, :events, :birthday, :country
  
  def initialize(attributes = {})
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
    @artists = attributes[:artists]
    @events = attributes[:events]
    @birthday = attributes[:birthday]
    @country = attributes[:country]
  end
  
  def formatted_email
    "#{@first_name} #{@last_name} <#{@email}>"
  end
  
  def welcome_blurb
    "Hi #{@first_name}, we're really happy that you've signed up."
  end
  
  def welcome_blurb_age_test
   # "yo, #{@birthday}"
   
    if @birthday == "07/11/1988"
      "You have the same birthday as one of Happy's founders, Richard Burton!"
    else
      "Welcome!"
    end
  end
  
end

  
   