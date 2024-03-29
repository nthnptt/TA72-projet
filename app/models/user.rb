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

  validates_length_of :phone_number, :is => 10
  validates_presence_of :username, :phone_number, :city, :city_code
  before_validation :set_default_img

  def set_default_img
      avatar.attach(io: File.open('app/assets/images/default_profil.png'),
         filename: 'placeholder.png', content_type: 'image/png') if avatar.blank?
  end


end
