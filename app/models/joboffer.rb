class Joboffer < ApplicationRecord
  belongs_to :user
  has_many :agreements
  has_many :users, through: :agreements
  has_many :comments
  
end

