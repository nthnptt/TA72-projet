# frozen_string_literal: true

class AddComment < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.numeric :rate
      t.references :commenter, index: true, foreign_key: { to_table: :users }
      t.references :commented, index: true, foreign_key: { to_table: :users }
      t.datetime :last_change
    end
  end
end
