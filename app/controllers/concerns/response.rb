# frozen_string_literal: true

# Response with JSON and HTTP status code(200 default)
module Response
  def json_response(object:, status: :ok)
    render json: object, status: status
  end
end
