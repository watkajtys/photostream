class AddImages < ActiveRecord::Migration
   def up
      create_table :images do |t|
         t.string :title
         t.string :url
         t.string :author
      end
   end

   def down
      drop_table :images
   end
end
