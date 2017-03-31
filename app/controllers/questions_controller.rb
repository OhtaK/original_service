class QuestionsController < ApplicationController
  include QuestionsHelper
  
  def index
  end
  
  def query
    session[:time] ||=10
    session[:id] ||=1
    @question= Question.find(params[:id]=session[:id])
  end
  
    def update
        #@question=Question.find(params[:id]=1)
        #@question.reply=question_params.reply
        #@id=1
        #@question=current_question
        #@id=current_question.id
        #@id=@id+1
        
        session[:time]=session[:time]-1
        session[:id]=session[:id]+1
        redirect_to query_path , notice: 'メッセージを保存しました'
    end
    
    def timer
      @time=5
    end
    
    private
    def question_params
        params.require(:question).permit(:reply)
    end
end
