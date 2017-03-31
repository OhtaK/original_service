class QuestionsController < ApplicationController
  def index
    @id=1
  end
  
  def query
    binding.pry
    @question= Question.find(params[:id]=@id)
    @time = 10
  end
    
    def update
        #@question=Question.find(params[:id]=1)
        #@question.reply=question_params.reply
        
        @id=@id+1
        redirect_to query_path , notice: 'メッセージを保存しました'
        @time=5
    end
    
    def timer
      @time=5
    end
    
    private
    def question_params
        params.require(:question).permit(:reply)
    end
end
