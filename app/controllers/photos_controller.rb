class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def create
    upload = params[:photo].delete(:file)
    @photo = Photo.new(params[:photo])
    
    if @photo.save
      path = "#{Rails.root}/public/uploads/#{@photo.id}.jpg"
      File.open(path,"wb") { |f| f.write upload.read }
      redirect_to @photo, notice: 'Photo was successfully created.'      
    else
      render action: "new"
    end
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.title = params[:photo][:title]

    if @photo.update_attributes(params[:photo])
      path = "#{Rails.root}/public/uploads/#{@photo.id}.jpg"
      File.open(path,"wb") { |f| f.write params[:photo][:file].read }
      redirect_to @photo, notice: 'Photo was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
  end
end