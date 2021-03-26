# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Resource, type: :model do
  describe 'associations' do
    it { should have_many(:mails_sent) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:photo) }
    it { should validate_presence_of(:note) }
    it { should validate_uniqueness_of(:name) }
  end
end
