class CitationsController < ApplicationController
  def index
    @citations = Citation.all.order(created_at: :desc).paginate(
      page: params[:page], per_page: 12
    )
  end

  def new
    @citation = Citation.new
  end

  def create
    @citation = Citation.new(citation_params)

    if @citation.save
      redirect_to '/'
    else
      render :new
    end
  end

  private

  def citation_params
    params.require(:citation).permit(:text)
  end
end
