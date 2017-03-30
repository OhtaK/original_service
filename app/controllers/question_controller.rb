class QuestionController < ApplicationController
  def query
    @time=Time.now
    @time=@time - Time.now
  end
  
 def timer
   @time=@time-1
 end
end
