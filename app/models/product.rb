

class Product < ApplicationRecord
  belongs_to :user, optional: true
  include ImageUploader::Attachment.new(:image)
  

end
