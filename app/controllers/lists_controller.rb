class ListsController < ApplicationController

  def index

  end

  def create
    
  end

  private

  def list_params
    params.require(:list).permit!
  end

end
