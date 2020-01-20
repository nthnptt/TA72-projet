# frozen_string_literal: true

class AddPhonenumber < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :phone_number
    end
  end
end
