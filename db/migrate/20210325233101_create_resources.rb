# frozen_string_literal: true

class CreateResources < ActiveRecord::Migration[6.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :photo
      t.integer :note

      t.timestamps
    end
  end
end
