class JokeListsController < ApplicationController

  def delete
    @joke_list = JokeList.find_by(jokelist_params)
    @joke_list.delete
  end

  private
  def jokelist_params
    params.require(:joke_list).permit!
  end

end
