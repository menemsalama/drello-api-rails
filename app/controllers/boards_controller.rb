class BoardsController < ApplicationController
  # before_action :set_todo, only: [:show, :update, :destroy]

  def index
    @boards = current_user.boards.all
    json_response(@boards)
  end

  def create
    @board = current_user.boards.create!(board_params)
    json_response(@board, :created)
  end

  private

  # remove `created_by` from list of permitted parameters
  def board_params
    params.permit(:name)
  end

end
