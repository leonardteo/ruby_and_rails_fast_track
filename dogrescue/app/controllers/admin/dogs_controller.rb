class Admin::DogsController < ApplicationController

  layout "admin"

  before_filter :require_login

  # GET /dogs
  # GET /dogs.json
  def index
    @dogs = Dog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dogs }
    end
  end

  # GET /dogs/1
  # GET /dogs/1.json
  def show
    @dog = Dog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dog }
    end
  end

  # GET /dogs/new
  # GET /dogs/new.json
  def new
    @dog = Dog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dog }
    end
  end

  # GET /dogs/1/edit
  def edit
    @dog = Dog.find(params[:id])
  end

  # POST /dogs
  # POST /dogs.json
  def create
    
    if params[:dog][:thumbnail]
      params[:dog][:thumbnail] = upload_thumbnail(params[:dog][:thumbnail])
    end

    @dog = Dog.new(params[:dog])

    respond_to do |format|
      if @dog.save
        format.html { redirect_to edit_admin_dog_path(@dog), notice: 'Dog was successfully created.' }
        format.json { render json: @dog, status: :created, location: @dog }
      else
        format.html { render action: "new" }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dogs/1
  # PUT /dogs/1.json
  def update
    @dog = Dog.find(params[:id])

    if params[:dog][:thumbnail]
      params[:dog][:thumbnail] = upload_thumbnail(params[:dog][:thumbnail])
    end

    respond_to do |format|
      if @dog.update_attributes(params[:dog])
        format.html { redirect_to edit_admin_dog_path(@dog), notice: 'Dog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy

    respond_to do |format|
      format.html { redirect_to admin_dogs_path }
      format.json { head :no_content }
    end
  end

  # Upload thumbnail
  def upload_thumbnail(upload_io)
    path_to_file = "#{Rails.root}/public/data/dogs/#{upload_io.original_filename}"
    File.open(path_to_file, 'wb') do |file|
      file.write(upload_io.read)
    end
    upload_io.original_filename
  end

end
