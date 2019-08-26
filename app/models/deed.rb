class Deed < ActiveRecord::Base
  belongs_to :user
  has_many :smiles

  validates :title, presence: true, length: {minimum: 5}
  validates :description, presence: true
  validates :image, presence: true
end
