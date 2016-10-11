class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :todos, dependent: :destroy

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
