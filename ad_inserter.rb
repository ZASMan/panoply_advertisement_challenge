class Episode
  attr_accessor :audio, :id

  def initialize(audio, id)
    @audio = audio
    @id = id
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
end

class AdInserter
  attr_accessor :episode, :ad_campaigns

  def initialize(episode, ad_campaigns)
    @episode = episode
    @ad_campaigns = ad_campaigns
    @potential_ads = potential_ads_available
  end

  def audio_output
    episode_audio = episode.audio
    ad_spaces_available.each do |ad_space|

    end
  end

  def ad_spaces_available
    audio = @episode.audio
    audio.gsub!('+', '')
    audio
  end

  def potential_ads_available
    potential_ads = []
    @ad_campaigns.each do |ad_campaign|
      if ad_campaign.targets.include?(@episode.id) && ad_spaces_available.include?(ad_campaign.type)
        potential_ads << ad_campaign 
      end
    end
    potential_ads
  end
end
