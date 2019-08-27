module StatCounter
  def total_smiles_given
    total_ticks('smiles-given')
  end

  def total_deeds_for_funding
    total_ticks('deeds-for-funding')
  end

  def total_deeds_in_progress
    total_ticks('deeds-in-progress')
  end

  def total_deeds_completed
    total_ticks('deeds-completed')
  end

  def total_ticks(type)
    up_ticks(type) - down_ticks(type)
  end

  def up_ticks(type)
    Stat.where(stat_type: type, direction: true).count
  end

  def down_ticks(type)
    Stat.where(stat_type: type, direction: false).count
  end
end
