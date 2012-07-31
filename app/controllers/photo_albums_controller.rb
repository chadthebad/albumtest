
class PhotoAlbumsController < ApplicationController
  # GET /photo_albums
  # GET /photo_albums.json
  def index
    @photo_albums = PhotoAlbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photo_albums }
    end
  end

  # GET /photo_albums/1
  # GET /photo_albums/1.json
  def show
    @photo_album = PhotoAlbum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo_album }
    end
  end

  # GET /photo_albums/new
  # GET /photo_albums/new.json
  def new
    @photo_album = PhotoAlbum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo_album }
    end
  end

  # GET /photo_albums/1/edit
  def edit
    @photo_album = PhotoAlbum.find(params[:id])
  end

  # POST /photo_albums
  # POST /photo_albums.json
  def create
    @photo_album = PhotoAlbum.new(params[:photo_album])

    respond_to do |format|
      if @photo_album.save
        format.html { redirect_to @photo_album, notice: 'Photo album was successfully created.' }
        format.json { render json: @photo_album, status: :created, location: @photo_album }
      else
        format.html { render action: "new" }
        format.json { render json: @photo_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photo_albums/1
  # PUT /photo_albums/1.json
  def update
    @photo_album = PhotoAlbum.find(params[:id])

    respond_to do |format|
      if @photo_album.update_attributes(params[:photo_album])
        format.html { redirect_to @photo_album, notice: 'Photo album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_albums/1
  # DELETE /photo_albums/1.json
  def destroy
    @photo_album = PhotoAlbum.find(params[:id])
    @photo_album.destroy

    respond_to do |format|
      format.html { redirect_to photo_albums_url }
      format.json { head :no_content }
    end
  end
end
