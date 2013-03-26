class Image < ActiveRecord::Base
   attr_accessible :title, :url, :author, :image, :remote_image_url

   validates :title, :presence => true

   mount_uploader :image, ImageUploader
end