class Deed < ActiveRecord::Base
  belongs_to :user
  has_many :smiles
  has_many :stories

  validates :title, presence: true
  validates :description, presence: true
  validates :thumbnail, presence: true

  def count_smiles_given
    Smile.where(deed_id: self.id).count
  end

  def count_stories
    Story.where(deed_id: self.id).count
  end

  def count_completed
    net_stat_count('deeds-completed', self.id)
  end

  def count_in_progress
    net_stat_count('deeds-in-progress', self.id)
  end

  def net_stat_count(stat_type, deed_id)
    all_stat_count(stat_type, true, deed_id) - all_stat_count(stat_type, false, deed_id)
  end

  def all_stat_count(stat_type, direction, deed_id)
    Stat.where(stat_type: stat_type, direction: direction, deed_id: deed_id).count
  end
end
