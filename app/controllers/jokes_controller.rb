class JokesController < ApplicationController

  def index
    @jokes = Joke.all
    render json: @jokes
  end

  def create
    @joke = Joke.find_or_create_by(joke_params)
    params[:list_ids].each do |list_id|
      JokeList.find_or_create_by(list_id: list_id ,joke_id: @joke.id)
    end
  end

  private
  def joke_params
    params.require(:joke).permit(:id, :phrase, :list_ids)
  end

end
