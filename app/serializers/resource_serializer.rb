# frozen_string_literal: true

class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo, :note

  has_many :mails_sent
end
