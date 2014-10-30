class TopicsController < ApplicationController
  before_filter :authenticate_user!, :only =>[:new]
  def index
    @topics = Topic.all.order("created_at DESC")
    @subscription = Subscription.new
  end

  def show
    @topic = Topic.find(params[:id])
    @sources = @topic.sources.order(:published_date)
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user.id
    @topic.image = topic_params[:image].original_filename unless topic_params[:image].blank?
    if @topic.save
      redirect_to topic_path(@topic.id)
    else
      render :new
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :user_id, :image)
  end

  def authenticate_user!
    unless user_signed_in?
      redirect_to new_user_registration_path
      flash[:notice] = "You must sign in before you can post a new topic"
    end
  end
end
