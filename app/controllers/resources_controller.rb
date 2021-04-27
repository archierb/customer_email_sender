# frozen_string_literal: true

class ResourcesController < ApplicationController
  before_action :set_resource, only: %i[update destroy]
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

  def update
    @resource.update(resource_params)
    head :no_content
  end

  def destroy
    @resource.destroy
    head :no_content
  end

  private

  def resource_params
    params.permit(
      :name,
      :photo,
      :note
    )
  end

  def set_resource
    @resource = Resource.find_by(id: params[:id])
  end
end
