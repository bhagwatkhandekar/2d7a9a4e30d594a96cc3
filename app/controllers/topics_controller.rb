class TopicsController < ApplicationController
  def index
  	@topics = Topic.all
  end

  def new
  	@topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.save
  end
  

  def show
  end


  private

  	def topic_params
  		params.require(:topic).permit(:topic_no, :topic_name)
  	end
end
