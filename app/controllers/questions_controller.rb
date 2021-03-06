class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)

    @question.save

    respond_to do |format|
      format.js
    end
  end

  private

  def question_params
    params.require(:question).permit(:appointment_id, :description, :answer)
  end
end
