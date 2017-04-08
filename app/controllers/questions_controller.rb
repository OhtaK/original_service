class QuestionsController < ApplicationController
  include QuestionsHelper
  
  def index
    session[:id] ||=1
      session[:score] ||=0
      session[:isTimeOut]||=0
      
    if(session[:id]>10 || session[:isTimeOut]==1)
      session[:id] =1
      session[:score] =0
      session[:isTimeOut]=0
    end
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
    session[:id]=session[:id]+1
    
    if(session[:id]>10)
      redirect_to results_index_path and return
    end
    
    redirect_to query_path
  end
    
  private
  def question_params
      params.require(:question).permit(:reply)
  end
end
