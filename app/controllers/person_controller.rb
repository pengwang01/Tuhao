class PersonController < ApplicationController
  def new
    @person = Person.new
  end
  
  def signup
    @person = Person.new(user_params)
    if @pesron.save
      redirect_to @person
    else
      render 'signup'
    end
  end
end
