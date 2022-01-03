class LunchesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @lunches = Lunch.all
    #@lunch = Lunch.find(params[:id])
  end

  def show
    @lunch = Lunch.find(params[:id])
    #@favorites = Favorite.new
  end

  def new
    @lunch = Lunch.new
  end
  
  def create
    @lunch = Lunch.new(lunch_params)
    @lunch.user_id = current_user.id
    if @lunch.save
      redirect_to lunch_path(@lunch), notice: '投稿に成功しました。'
    else
      render :new
    end
  end

  def edit
    @lunch = Lunch.find(params[:id])
    if @lunch.user != current_user
      redirect_to lunches_path, alert:'不正なアクセスです。'
    end
  end
  
  def update
    @lunch = Lunch.find(params[:id])
    if @lunch.update(lunch_params)
      redirect_to lunch_path(@lunch), notice: '更新に成功しました。'
    else
      render :edit
    end
  end
  
  def destroy
    lunch = Lunch.find(params[:id])
    lunch.destroy
    redirect_to lunches_path
  end
  
  private
  
  def lunch_params
    params.require(:lunch).permit(:title,:body,:image,:address,:name,:score)
  end

end
