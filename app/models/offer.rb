# frozen_string_literal: true

class Offer < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  belongs_to :category
  has_many :propositions
end
