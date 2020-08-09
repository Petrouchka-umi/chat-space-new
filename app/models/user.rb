class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable , :registerable ,
  :recoverable , :rememberable , :validatable
  has_many :messages
  has_many :users_groups
  has_many :groups, through: :users_groups
  validates :name, presence: true, uniqueness: true

  def self.search(input, id)
    return nil if input == ""
    User.where(['name LIKE ?', "%#{input}%"] ).where.not(id: id).limit(10)
  end
  
end

