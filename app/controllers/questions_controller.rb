class QuestionsController < ApplicationController
  include QuestionsHelper
  
  def index
    session[:time]=10
    session[:id]=1
    session[:score]=0
  end
  
  def query
    @question= Question.find(params[:id]=session[:id])
  end
  
  def update
    @question=Question.find(params[:id]=session[:id])
    @reply=question_params[:reply]
    #binding.pry
    if @reply==@question.eng
      session[:score]=session[:score]+1
    end
    
    #binding.pry
    session[:time]=session[:time]-1
    session[:id]=session[:id]+1
    
    if(session[:id]>10)
      redirect_to results_index_path and return
    end
    
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
