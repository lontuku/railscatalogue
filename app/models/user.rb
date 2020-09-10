class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook]

  has_many :stores
  has_many :reviews
  has_many :likes, dependent: :destroy

  enum role: [:admin, :visit]

  # after_create :send_admin_mail
  # def send_admin_mail
  #   UserMailer.send_welcome_email(self).deliver_later
  # end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.nick = auth.info.name
    end
  end
end
