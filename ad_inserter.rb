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
  attr_accessor :episode, :ad_campaigns, :episode_audio, :potential_ads

  def initialize(episode, ad_campaigns)
    @episode = episode
    @episode_audio = @episode.audio
    @ad_campaigns = ad_campaigns
    @potential_ads = potential_ads_available
  end

  def audio_output
    episode_audio = @episode.audio
    # Helps assure that ad only appears once
    # Because each time it goes through the array of ad spaces loop
    # It will kick out an add that already occurred
    array_of_ad_spaces = ad_spaces_available.split("]")
    array_of_ad_spaces.each do |ad_space|
      if episode_audio.include?("[PRE]")
        ad_campaign = ad_campaign_for_ad_space_type("PRE", episode_audio)
        episode_audio.sub!("[PRE]", ad_campaign)
      end
      if episode_audio.include?("[MID]")
        ad_campaign = ad_campaign_for_ad_space_type("MID", episode_audio)
        episode_audio.sub!("[MID]", ad_campaign)
      end
      if episode_audio.include?("[POST]")
        ad_campaign = ad_campaign_for_ad_space_type("POST", episode_audio)
        episode_audio.sub!("[POST]", ad_campaign)
      end
    end
    episode_audio
  end

  def ad_campaign_for_ad_space_type(ad_space_type, current_audio)
    ad_campaigns_for_ad_space_type = []
    potential_ads_available.each do |ad_campaign|
      ad_campaigns_for_ad_space_type << ad_campaign if ad_campaign.type == ad_space_type && current_audio.include?(ad_campaign.audio) == false
    end
    ad_campaigns_for_ad_space_type.first.audio
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
