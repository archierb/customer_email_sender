# frozen_string_literal: true

class Resource < ApplicationRecord
  has_many :mails_sent

  validates_presence_of :name, :photo, :note
  validates :name, uniqueness: { case_sensitive: true }
end
