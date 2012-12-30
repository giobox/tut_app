class NewsitemsController < ApplicationController
  before_filter :signed_in_user, only: [:index, :new, :create, :destroy]
  
  def index
  @newsitems = Newsitem.paginate(page: params[:page])
  end
  
  def new
    @newsitem = Newsitem.new
  end
  
  def create
    @newsitem = current_user.newsitems.build(params[:newsitem])
    if @newsitem.save
    flash[:success] = "News story published"
     redirect_to newsitems_path
    else
      render 'new'
    end
  end
  
  def destroy
    Newsitem.find(params[:id]).destroy
    flash[:success] = "News story deleted."
    redirect_to newsitems_path
  end

#API Methods
  def get
    @newsitems = Newsitem.all
	render json: @newsitems
  end
end
