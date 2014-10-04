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
      render :self
    end
  end

  private

  def source_params
    params_require(:source).permit(:title, :image, :link, :time, :date,
    :publisher)
  end
end
