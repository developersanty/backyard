class TagsController < ApplicationController
  before_action :authenticate_user

  def index
    # so the question is, list them tags by user session or by decoding the token
    @tags = Tag.where(trigger_params.merge(user_id: current_user.id))
    render json: @tags, status: :ok
  end

  def create
    @tag = Tag.find_or_create_by(trigger_params.merge(user_id: current_user.id))
    render json: @tag, status: :ok
  end


  def update
    @tag = Tag.find(params[:id])
    @tag.update(trigger_params)
    json_response(Tag.find(params[:id]))
  end

  def edit
  end

  def destroy
  end

  private

  def trigger_params
    params.permit(:value, :id, :block_id, :user_id)
  end
end
