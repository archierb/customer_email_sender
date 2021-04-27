# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordInvalid, with: :four_twenty_two

    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end
  end

  private

  # JSON response with message; Status code 422 - unprocessable entity
  def four_twenty_two(e)
    json_response(object: { message: e.message }, status: :unprocessable_entity)
  end
end
