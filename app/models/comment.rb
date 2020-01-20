# frozen_string_literal: true

class Comment < ApplicationRecord
  before_validation :set_actual_date, :set_user
  belongs_to :commented, foreign_key: :commented_id, class_name: 'User'
  belongs_to :commenter, foreign_key: :commenter_id, class_name: 'User'

  def set_actual_date
    self.last_change = Time.now
  end

  def set_user
    self.commenter = User.current
  end
end
