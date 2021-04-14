class ResourcesController < ApplicationController

  # GET /resources
  def index
    resource = Resource.all
    json_response(object: resource)
  end

  # POST /resources
  def create
    resource = Resource.create!(resource_params)
    json_response(object: resource, status: :created)
  end


  private

  def resource_params
    params.permit(
      :name,
      :photo,
      :note
    )
  end
end
