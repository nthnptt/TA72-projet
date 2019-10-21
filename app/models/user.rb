class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  validates_length_of :phone_number, :is => 10
  validates_presence_of :username, :phone_number, :city, :city_code
  before_validation :default_img

  def default_img
    if self.avatar.blank?
      self.avatar.attach(io: File.open('app/assets/images/default_profil.png'),
                     filename: 'placeholder.png', content_type: 'image/png')
    end

  end


end
