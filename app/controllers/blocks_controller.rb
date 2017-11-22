class BlocksController < ApplicationController
  before_action :authenticate_user

  def index
    @blocks = Block.where(user_id: current_user.id)
    json_response(@blocks)
  end

  def update
    @block = Block.find(params[:id])
    @block.update(block_params)
    json_response(Block.find(params[:id]))
  end

  def destroy
    @block = Block.find(params[:id])
    @block.destroy
  end

  def tags
    @tags = Block.find(params[:id]).tags
    json_response(@tags)
  end

  private

  def block_params
    params.permit(:status, :description, :rating, :id)
  end
end
