class StudentsController < ApplicationController

  def show
    @student = User.find(params[:id])
    render json: @student, serializer: StudentQuizSerializer
  end

end
