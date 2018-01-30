class Episode
  attr_accessor :audio, :id

  def initialize(audio, id)
    @audio = audio
    @id = id
  end

  def episode_hash
    { audio: @audio, id: id }
  end
end

class AdCampaign
  attr_accessor :audio, :type, :targets, :revenue

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
  attr_accessor :episode, :ad_campaign

  def initialize(episode, ad_campaign_array)
    @episode = episode.episode_hash
    @ad_campaign = ad_campaign_array
  end

  def audio_output

  end
end
