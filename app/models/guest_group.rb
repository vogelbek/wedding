class GuestGroup < ActiveRecord::Base
  attr_accessible :email, :full_name, :kids, :plus_one
end
