class AnisController < ApplicationController

  def index
        @anis = Ani.all
  end

  def new
    @ani = Ani.new
  end

  def create
    ani = Ani.new(ani_params)

    tweet.user_id = current_user.id 

    if ani.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @ani = Ani.find(params[:id])
  end

  def edit
    @ani = Ani.find(params[:id])
  end

  def update
    ani = Ani.find(params[:id])
    if ani.update(ani_params)
      redirect_to :action => "show", :id => ani.id
    else
      redirect_to :action => "new"
    end
  end

   def destroy
    ani = ANi.find(params[:id])
    ani.destroy
    redirect_to action: :index
  end

  private
  def ani_params
    params.require(:ani).permit(:name, :story, :seasons,:what)
  end
 
end