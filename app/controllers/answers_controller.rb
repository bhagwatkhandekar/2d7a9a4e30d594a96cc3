class AnswersController < ApplicationController
  def index
  	@answers = Answers.all
  end

  def new
  	@answer = Answers.new
  end

  def create
    @answer = Answers.new(answers_params)
    @answer.save
  end
  

  def show
  end


  private

  	def answers_params
  		params.require(:answer).permit(:description)
  	end
end
