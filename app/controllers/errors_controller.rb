# frozen_string_literal: true

# Controller that renders custom errors
class ErrorsController < ActionController::Base
  def not_found
    render json: { message: 'Not Found' }, status: :not_found
  end

  def exception
    render json: { message: 'Internal Server Error' }, status: :internal_server_error
  end
end