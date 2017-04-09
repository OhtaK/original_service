class HistoriesController < ApplicationController
    def index
        @histories=History.all
    end
    
    def create
        @histories=History.all
    end
end
