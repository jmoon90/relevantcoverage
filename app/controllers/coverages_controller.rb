class CoveragesController < ApplicationController
  def new
    @coverage = Coverage.new
  end

  def create
    @coverage = Coverage.new

    if @coverage.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def coverage_param
    params_require(:coverage).permit(
  end
end
