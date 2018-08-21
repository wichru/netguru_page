class CitationsController < ApplicationController
  def index
    @citations = Citation.all.order(created_at: :desc)
  end

  def new

  end

  def create
    citation_params = params.require(:citation).permit(:text)

    @citation = Citation.new(citation_params)
    @citation.save

    redirect_to citations_path
  end

  def show
    @citation = Citation.find(params[:id])
  end

end
