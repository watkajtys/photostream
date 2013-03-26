class MigrateToCarrierwave < ActiveRecord::Migration
   def up
      change_table :images do |t|
         t.string :image
      end

      Image.all.each do |image|
         url = image.read_attribute(:image_url)
         image.remote_image_url = url
         image.save!
      end

      change_table :images do |t|
         t.remove :url
      end
   end

   def down
      change_table :images do |t|
         t.remove :image
         t.string :image_url
      end
   end
end
