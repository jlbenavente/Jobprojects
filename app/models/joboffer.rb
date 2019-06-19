class Joboffer < ApplicationRecord
  belongs_to :user
  has_many :agreements
  has_many :users, through: :agreements
  has_many :comments
  has_one_attached :image1
  has_one_attached :image2
  has_one_attached :image3
  has_one_attached :image4
  has_one_attached :image5
  has_one_attached :image6

  validates :title, presence: true
  validates :description, presence: true
  # validates :skill_id, presence: true
  validates :image1, presence: false
  validates :image2, presence: false
  validates :image3, presence: false
  validates :image4, presence: false
  validates :image5, presence: false
  validates :image6, presence: false

end
