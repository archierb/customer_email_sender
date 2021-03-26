# frozen_string_literal: true

class CreateMailsSents < ActiveRecord::Migration[6.1]
  def change
    create_table :mails_sents do |t|
      t.string :email
      t.belongs_to :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
