class ListsController < ApplicationController

  def index
    @lists = List.all
    render json: @lists
  end

  def create

  end

  private

  def list_params
    params.require(:list).permit!
  end

end
