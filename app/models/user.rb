# frozen_string_literal: true

class User < ApplicationRecord
  acts_as_votable
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :offers
  has_many :propositions
  has_many :comments, foreign_key: :commented_id

  validates_length_of :phone_number, is: 10
  validates_presence_of :username, :phone_number, :city, :city_code

  def rate
    result=0
    result=comments.sum(&:rate)/comments.length if comments.length>0
    result.round(2)
  end

  private

  def self.current
    Thread.current[:user]
  end

  def self.current=(user)
    Thread.current[:user] = user
  end
end
