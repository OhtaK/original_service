class QuestionController < ApplicationController
  def query
    @word= Word.find(params[:id]=1)
    @time=Time.now
    @time=@time - Time.now
  end
  
 def timer
   @time=@time-1
 end
end
