class Episode
  def initialize(audio, id)
    @audio = audio
    @id = id
  end

  def episode_hash
    { audio: @audio, id: id }
  end
end

class AdCampaign
  def initialize(audio, type, targets, revenue)
    @audio = audio
    @type = type
    @targets = targets
    @revenue = revenue
  end

  def ad_campaign_hash
    { audio: @audio, type: @type, targets: @targets, revenue: @revenue }
  end
end

class AdInserter

  def initialize(episode, ad_campaign)
    @episode = episode.episode_hash
    @ad_campaign = ad_campaign.ad_campaign_hash
  end

  def audio_output

  end
end
