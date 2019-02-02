class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = '質問をおくったよ'
      redirect_to new_question_path
    else
      render 'new'
    end
  end

  private
    def question_params
      params.require(:question).permit(:question)
    end
end
