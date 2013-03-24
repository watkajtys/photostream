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
      else 
         flash[:error] = "Could not create image!"
         render :new
      end 
   end

   def show
      @image = Image.find(params[:id])
   end

   def edit
      @image = Image.find(params[:id])
   end

   def update
      @image = Image.find(params[:id])
      if @image.update_attributes(params[:image])
         redirect_to @image
      else
         flash[:error] = "Could not update image."
         render :edit
      end
   end

   def destroy
      @image = Image.find(params[:id])
      @image.destroy
      redirect_to images_path
   end
end