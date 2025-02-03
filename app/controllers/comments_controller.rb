class CommentsController < ApplicationController
  def create
    comment = Comment.new(permitted_params[:comment])

    if comment.save
      redirect_to project_path(comment.project)
    end
  end

  private

  def permitted_params
    params.permit(comment: [:description, :project_status, :project_id])
  end

  def error_response(model_object)
    {
      errors: model_object.errors.messages
    }.to_json
  end
end
