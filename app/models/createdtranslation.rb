class Createdtranslation < ApplicationRecord
  belongs_to :creator

  validates :totranslate, presence: true, length: {maximum: 200}
  validates :title, presence: true, length: {maximum: 30}
  validates :language1, presence: true
  validates :language2, presence: true
end
