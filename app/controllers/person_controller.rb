class PersonController < ApplicationController
  # GET /person/new
  def new
	
  end
  def create
      params = person_params
      if params[:role] == 'actor'
	@actor = Actor.new(:first_name => params[:first_name], :last_name => params[:last_name], :birth_date => params[:birth_date], :description => params[:description])
	@actor.save
      else
	@director = Director.new(:first_name => params[:first_name], :last_name => params[:last_name], :birth_date => params[:birth_date], :description => params[:description])
	@director.save
      end
   
  end

  def index
      @entities = []
      if params[:q] == "actor"
	@entitites = Actor.all
      else if params[:q] == "director"
	@entities = Director.all
	   end
      end
  end  
  def person_params
      params.permit(:first_name, :last_name, :birth_date, :description, :role)
  end
end
