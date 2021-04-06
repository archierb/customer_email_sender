# frozen_string_literal: true

class MailsSent < ApplicationRecord
  belongs_to :resource

  validates_presence_of :email, :resource_id
end
