class QuizzesController < ApplicationController
  def index
    render json: Quiz.all
  end

  def show
    render json: Quiz.find(params[:id])
  end

  def create
    modified_params = {title: quiz_params[:title], description: quiz_params[:description], questions_attributes: quiz_params[:questions]}
    quiz = Quiz.new(modified_params)
    if quiz.save
      render json: quiz, include: 'questions,possible_answers'
    else
      render json: {status: 500, err: 'quiz could not be saved.'}
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :description, questions: [:content, possible_answers_attributes: [:content]])
  end
end
