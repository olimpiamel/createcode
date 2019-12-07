class Croation < ApplicationRecord


  validates :totrans, presence: true, length: {maximum: 200}
  validates :title, presence: true, length: {maximum: 30}
  validates :lang1, presence: true
  validates :lang2, presence: true
end
