class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @sources = @topic.sources.order(:date)
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topic_path(@topic.id)
    else
      render :new
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end
end
