class ImagesController < ApplicationController

   def index
      @images = Image.all
   end

   def new
      @image = Image.new
   end

   def create
      @image = Image.new(params[:image])
      if @image.save
         redirect_to images_path
      end 
   end

   def show
      @image = Image.find(params[:id])
   end
end