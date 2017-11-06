class Product < ApplicationRecord
  belongs_to :user, optional: true
  include ImageUploader::Attachment.new(:image)
 has_many :reviews, dependent: :destroy

end
