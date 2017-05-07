class Admin::QuestionsController < ApplicationController
  before_action :set_question, only: %i[edit, update, destroy]
  def index
    @questions = Question.all
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
    @question.destroy
    redirect_to admin_questions_path
  end

  def update
  end

  private
    def user_params
      params.require(:question).permit(:subject, :context, :point, :answer)
    end

    def set_question
      @question = Question.find(params[:id])
    end
end
