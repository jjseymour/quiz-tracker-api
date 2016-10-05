class QuizzesController < ApplicationController
  def index
    render json: Quiz.all
  end

  def show
    render json: Quiz.find(params[:id])
  end

  def create
    quiz = Quiz.new(quiz_params)
    if quiz.save
      render json: quiz
    else
      render json: {status: 500, err: 'quiz could not be saved.'}
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :description, :difficulty, :question_attributes => [])
  end
end
