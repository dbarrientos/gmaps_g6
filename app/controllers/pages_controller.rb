class PagesController < ApplicationController
  def index
  	@users = User.all
  	@markers = Gmaps4rails.build_markers(@users) do |user,marker|
  		marker.lat user.latitude
  		marker.lng user.longitude
  	end
  end

  def index2
  end

  def index3
  	@users = User.all
  	@markers = Gmaps4rails.build_markers(@users) do |user,marker|
  		marker.lat user.latitude
  		marker.lng user.longitude
  	end
  end

  def get_address
  	
  		@direccion = Geocoder.address([params[:latitude],params[:longitude]])
  		render json: @direccion
  end


  def direccion
  	if params[:latitude].present? && params[:longitude].present?
  		@direccion = Geocoder.address([params[:latitude],params[:longitude]])
  	else
  		@direccion = "error"
  	end
  	respond_to do |format|
     format.js   
    end
  end
end
