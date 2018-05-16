class PersonController < ApplicationController
  # GET /person/new
  def new
	
  end
  def create
      params = person_params
      puts params[:first_name]
  end
  def person_params
      params.permit(:first_name, :last_name, :birth_date, :description, :role)
  end
end
