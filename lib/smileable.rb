module Smileable
  extend ActiveSupport::Concern

  included do
    has_many :smiles, as: :smileable
  end

  def total_smiles
    self.smiles.size
  end
end
