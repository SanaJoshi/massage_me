class Profile < ApplicationRecord
  include ImageUploader::Attachment.new(:image)
  belongs_to :user, optional: true

  geocoded_by :address
after_validation :geocode

 def full_address
   "#{address}, #{postcode}, Australia"
 end
end
