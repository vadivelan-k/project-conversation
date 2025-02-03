class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments, foreign_key: :user_id

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def display_name
    "#{first_name}, #{last_name}"
  end
end
