class QuestionsController < ApplicationController
  def index
  	@questions = Question.all
  end

  def new
  	@question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.save


    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'High score was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
  end

  def edit
  end



  private
  def set_question
      @question = HighScore.find(params[:id])
    end
  	def question_params
  		params.require(:question).permit(:question_name, :que_priority)
  	end
end
