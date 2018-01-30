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
  attr_accessor :episode, :ad_campaign

  def initialize(episode, ad_campaign_array)
    @episode = episode
    @ad_campaign = ad_campaign_array
  end

  def audio_output

  end

  def ad_spaces_available
    audio = @episode.audio
    audio.gsub!('+', '')
    audio
  end

  def available_ad_slots
    slots = []
  end
end
