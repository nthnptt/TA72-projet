# frozen_string_literal: true

class Category < ApplicationRecord
  scope :order_by_name, -> { order(:name) }

  has_many :offers
end
