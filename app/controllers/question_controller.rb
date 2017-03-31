class QuestionController < ApplicationController
  
  def query
    @question= Question.find(params[:id]=1)
  end
  
end
