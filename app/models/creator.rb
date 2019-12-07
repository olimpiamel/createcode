class Creator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         #validates :alias, presence: true, uniqueness: true
         #validates :name, presence: true


  has_many :createdtranslations, dependent: :destroy


  has_one :profile, dependent: :destroy
  after_create :init_profile

  def init_profile
    self.create_profile!
  end
end
