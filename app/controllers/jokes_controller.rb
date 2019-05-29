class JokesController < ApplicationController
  

  def create
    @joke = Joke.find_or_create_by(joke_params)
    render json: @joke
  end

  private
  def joke_params
    params.require(:joke).permit!
  end
end
