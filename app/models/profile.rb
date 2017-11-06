class Profile < ApplicationRecord
  belongs_to :user
  geocoded_by :address
after_validation :geocode

 def full_address
   "#{address}, #{postcode}, Australia"
 end
end
