class ResultsController < ApplicationController
  def index
    @question=Question.all
    if logged_in?
      @history = current_user.histories.new(score: session[:score])
      @history.save
    end
  end
end
