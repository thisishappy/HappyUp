# == Schema Information
# Schema version: <timestamp>
#
# Table name: users
#
# id :integer not null, primary key
# first_name :string(255)
# last_name :string(255)
# artists :string(255)
# email :string(255)
# created_at :datetime
# updated_at :datetime


class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :first_name, :last_name, :email, :artists, :password
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :first_name,  :presence => true,
                          :length => { :maximum => 50 }
  validates :last_name,   :presence => true,
                          :length => { :maximum => 50 }
  validates :email,       :presence => true,
                          :format => { :with => email_regex },
                          :uniqueness => { :case_sensitive => false }
  validates :password,    :presence => true,
                          :length => { :within => 6..40 }
end
