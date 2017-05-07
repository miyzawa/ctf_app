class Admin::QuestionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(user_params)
    if @question.save
      redirect_to admin_questions_path
    else
      render :new
    end
  end

  def destroy
  end

  def update
  end

  def user_params
    params.require(:question).permit(:subject, :context, :point, :answer)
  end
end
