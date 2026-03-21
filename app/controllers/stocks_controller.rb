class StocksController < ApplicationController
  before_action :set_common_resources, only: [:new, :edit, :create, :update, :destroy]

  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    @stock.user = current_user
    if @stock.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def edit
  end

  def update
    if @stock.update(stock_params)
      redirect_to stock_path(@stock)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.destroy
    redirect_to root_path
  end

  private

  def set_common_resources
    @genres = Genre.all
  end

  def stock_params
    params.require(:stock).permit(:title, :explanation, :category_id, :price, :piece)
  end

end
