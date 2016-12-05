class CohortsController < ApplicationController

  def index
    render json: Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
    render json: @cohort, serializer: CohortStudentSerializer
  end

end
