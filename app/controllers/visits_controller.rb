class VisitsController < ApplicationController

  def new
     @visit = Visit.new

  end

  def create
    @visit = Visit.new(visit_params)
    @visit.save

  end


  def index
    @visits = Visit.all

  end

  def visit_params
    params.require(:visit).permit(:name, :price)
  end

end
