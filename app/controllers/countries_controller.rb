class CountriesController < ApplicationController
    def index
        @countries = Country.all 
    end
    def new 
    end
    def create
       country = Country.new
       country.question = params[:question]
       country.answer = params[:answer]
       country.flag = params[:flag]
       country.save
       redirect_to '/countries'
    end
    def edit
         @country =Country.find(params[:id])
    end
    def editInfo
        country = Country.find(params[:id])
        country.question = params[:question]
        country.answer = params[:answer]
        country.flag = params[:flag]
        country.save
    redirect_to '/countries'
    end
    
    def guess
        @country = Country.all 
        index = rand(@country.length)
        @country = @country[index]
    end
    def answer
        @country = Country.find(params[:id])
    end
    
    
    
end
