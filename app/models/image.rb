class Image < ActiveRecord::Base
   attr_accessible :title, :url, :author

   validates :title, :presence => true

   validates :url, {
      :format => {
        :with => /^https?:/, :message => "Please Enter a Valid URL"
      }
   }
end