class Podcast < ApplicationRecord
 has_many :episodes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
