class Joboffer < ApplicationRecord
  belongs_to :user
  has_many :agreements
  has_many :users, through: :agreements
  has_many :comments
  has_many_attached :images
  validates :title, presence: true
  validates :description, presence: true
  validates :skill_id, presence: true
  validates :image_type, presence: true
  # validates :photo, presence: true
  def thumbnail input
  	return self.images[input].variant(resize: '400x300!').processed
  end

  private


  

  def image_type
  	if images.attached? == false
  		errors.add(:images, :notice => 'El agregar imagenes puede hacer que tu aviso sea atendido más rapido.')
  	end
  	images.each do |image|
	  	if !image.content_type.in?(%('image/jpeg image/jpg image/png'))
	  		errors.add(:images, 'Las imagenes deben ser JPEG, JPG o PNG')
	  	end
    end
  end

end
