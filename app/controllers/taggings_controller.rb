class TaggingsController < ApplicationController
  before_action :authenticate_user

    def create
      @tagging = Tagging.find_or_create_by(tagging_params)
      render json: @tagging, status: :ok
    end

    def destroy
      @tagging = Tagging.find_by(tagging_params).destroy
      render json: @tagging, status: :ok
    end

  private

  def tagging_params
    params.permit(:tag_id, :block_id)
  end
end
