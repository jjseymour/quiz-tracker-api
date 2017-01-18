class StudentQuizzesController < ApplicationController
  before_action :set_student_quiz, except: [:create, :index]

  def index
  end

  def create
    student_quiz = StudentQuiz.new(quiz_id: params[:quiz_id], student_id: Auth.decode(params[:jwt])["user"])
    if student_quiz.save
      render json: student_quiz
    else
      render json: {status: 500, err: 'Student quiz could not be saved.'}
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_student_quiz
    @student_quiz = StudentQuiz.find(params[:id])
  end

  def student_quiz_params
    params.require(:student_quiz).permit(:grade, :notes, :quiz_id)
  end
end
