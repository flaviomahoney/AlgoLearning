class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :progresses, dependent: :destroy
  has_many :courses, through: :progresses
  has_many :comments, through: :progresses
  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  validates :photo, presence: true
end
#OKMan