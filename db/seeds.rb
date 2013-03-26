# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Image.create(
   :title => "My title!",
   :author => "Me!",
   :remote_image_url => "http://theoriginaldolphinwatch.com/images/dolphin1b.jpg")