class Deed < ActiveRecord::Base
  belongs_to :user
  has_many :smiles

  validates :title, presence: true
  validates :description, presence: true
  validates :thumbnail, presence: true

  def total_smiles(id)
    Smile.where(deed_id: id).count
  end
end
