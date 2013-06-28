class GuestGroup < ActiveRecord::Base
  attr_accessible :email, :full_name, :kids, :plus_one, :vulnerabilities
  validates_uniqueness_of :email, :message => "You already told us you were coming!"
  validates_presence_of :email
end
