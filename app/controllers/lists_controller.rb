class ListsController < ApplicationController

  def index

  end

  def create

  end

  def destroy
    List.find(params[:id]).destroy

  end

  private

  def list_params
    params.require(:list).permit!
  end

end
