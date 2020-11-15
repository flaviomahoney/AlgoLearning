class Course < ApplicationRecord
  acts_as_taggable_on :tags

  has_rich_text :body

  has_many :progresses
  has_many :users, through: :progresses
  has_many :comments, through: :progresses
  has_many :exercises, dependent: :destroy

  has_one_attached :dataset
  has_one_attached :photo
  has_many_attached :images

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
  validates :difficulty, presence: true
  validates :short_description, presence: true
end
