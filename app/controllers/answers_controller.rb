class AnswersController < ApplicationController
  def create
    answer = Answer.new(answer_params)    
    if answer.save
      render json: {studentQuiz: answer.student_quiz, studentAnswers: answer.student_quiz.answers} 
    else
      render json: {errors: 
                    [{detail: "no answer provided",
                      source: {pointer: "answer/err_type"}}
                    ]}, status: 404
    end
  end

  def show
  end

  def update
  end
  private

  def answer_params
    params.require(:answer).permit(:content, :student_quiz_id, :question_id) 
  end

end
