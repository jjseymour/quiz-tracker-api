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

  def student_answers
    # TODO: Find student quiz and return content with correct? bool
    student_quiz = StudentQuiz.find(params["quiz_id"])
    answers = student_quiz.answers.map(&:content)
    correct = student_quiz.answers.map(&:correct?)
    data_to_render = []
    counter = 0
    answers.count.times do
      counter += 1
      data_to_render << {
        content: answers[counter],
        correct: correct[counter]
      }
    end
    render json: data_to_render
  end
  private

  def answer_params
    params.require(:answer).permit(:content, :student_quiz_id, :question_id) 
  end

end
