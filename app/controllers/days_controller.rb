class DaysController < ApplicationController
  def index
    @days = Day.from_now.paginate(:page => params[:page], :per_page => 7)
  end

  def new
  end

  def create
  end

  def show
    @day = Day.find(params[:id])
  end

  def edit
  end

  private

  # def day_params
  #   params.require(:day).permit(:date)
  # end

end
