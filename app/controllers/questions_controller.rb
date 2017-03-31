class QuestionsController < ApplicationController
    
    def query
        @question= Question.find(params[:id]=1)
    end
    
    def update
        @question=Question.find(params[:id]=1)
        redirect_to query_path , notice: 'メッセージを保存しました'
        binding.pry
    end
    
    private
    def question_params
        params.require(:question).permit(:reply)
    end
end
