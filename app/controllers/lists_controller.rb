class ListsController < ApplicationController
  before_action :set_board
  # before_action :set_board_item, only: [:show, :update, :destroy]

  def index
    json_response(@board.lists)
  end

  def create
    @board.lists.create!(list_params)
    json_response(@board, :created)
  end

  private

  def list_params
    params.permit(:title)
  end

  def set_board
    @board = current_user.boards.find(params[:board_id])
  end

end
