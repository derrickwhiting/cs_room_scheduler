class MeetingsController < ApplicationController
  before_action :find_meeting, only: [:clear, :show, :update, :edit]

  def index
  end

  def new
  end

  def create
  end

  def clear
    meeting_params = {title: nil, description: nil, host: nil}
    if @meeting.update(meeting_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @meeting.update(meeting_params)
      redirect_to root_path
    else
      flash[:alert] = 'Title cannot be blank'
      render :edit
    end
  end

  def show
  end

  def edit
  end

  private

  def meeting_params
    params.require(:meeting).permit(:title, :description, :host, :room, :time)
  end

  def find_meeting
    @meeting = Meeting.find(params[:id])
  end

end
