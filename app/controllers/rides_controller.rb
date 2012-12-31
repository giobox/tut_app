class RidesController < ApplicationController
  before_filter :signed_in_user, only: [:index, :new, :create, :destroy]
  
  def index
  @rides = Ride.paginate(page: params[:page])
  end
  
  def new
    @ride = Ride.new
  end
  
  def create
    @ride = current_user.rides.build(params[:ride])
    if @ride.save
    flash[:success] = "Club ride published."
     redirect_to rides_path
    else
      render 'new'
    end
  end
  
  def destroy
    Ride.find(params[:id]).destroy
    flash[:success] = "Club ride deleted."
    redirect_to rides_path
  end

#API Methods
  def get
    @rides = Ride.all
	render json: @rides
  end
end
