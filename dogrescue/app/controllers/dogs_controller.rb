class DogsController < ApplicationController
  def index
    @dogs = Dog.where(:available => true).order("created_at DESC")
  end

  def show

    @dog = Dog.find_by_id(params[:id])

    if @dog.nil?
      redirect_to("/")
    end

  end
end
