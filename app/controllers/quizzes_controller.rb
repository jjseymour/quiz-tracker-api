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
      render json: quiz, include: 'questions,possible_answers'
    else
      render json: {status: 500, err: 'quiz could not be saved.'}
    end
  end

  private

  def quiz_params
    params.require(:quiz).permit(:title, :description, questions_attributes: [:content, possible_answers_attributes: [:content, :answer_type, :short_answer, :long_answer, :code, multiple_choice_long: [], multiple_choice_short: []]])
  end
end
