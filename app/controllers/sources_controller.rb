class SourcesController < ApplicationController
  def index
    @sources = Source.all
  end

  def new
    @source = Source.new
  end

  def create
    @source = Source.new(source_params)
    if @source.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def source_params
    params.require(:source).permit(:title, :image, :link, :time, :published_date,
    :publisher, :topic_id)
  end
end
