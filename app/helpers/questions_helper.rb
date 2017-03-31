module QuestionsHelper
    def current_question
        @current_question ||= Question.find_by(id: @id)
    end
end
