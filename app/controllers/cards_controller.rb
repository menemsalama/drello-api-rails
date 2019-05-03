class CardsController < ApplicationController
  before_action :set_list

  def index
    json_response({ message: "Hello world" })
  end

  def create
    @list.cards.create!(card_params)
    json_response(@list, :created)
  end


  private

  def card_params
    params.permit(:name)
  end

  def set_list
    @list = List.find(params[:list_id])
  end

end
