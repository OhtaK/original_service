class ResultsController < ApplicationController
  def index
    @question=Question.all
  end
end
