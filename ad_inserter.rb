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

# Example Episodes

example_episode_1 = { audio: "[PRE]+++++[MID]+++++", id: "dag-532" }
example_episode_2 = { audio: "+++++[MID]++++[MID]++++[POST]", id: "kld-412" }
example_episode_3 = { audio: "[PRE][PRE]+++++[MID]+++[MID]+++++[POST]", id: "abc-444" }

# Example Ad Campaigns

example_ad_campaign_1 = [
{ audio: "*AcmeA*", type: "PRE", targets: ["dag-523"], revenue: 12 },
{ audio: "*AcmeB*", type: "MID", targets: ["dag-523"], revenue: 4 },
{ audio: "*AcmeC*", type: "MID", targets: ["dag-523"], revenue: 14 }
]

example_ad_campaign_2 = [
{ audio: "*CorpCorp*", type: "POST", targets: ["afs-354", "dag-523"], revenue: 3 }
]

# Currently Running Ad Campaigns

ad_campaign_1 = [
{ audio: "*AcmeA*", type: "PRE", targets: ["dag-892", "hab-812"], revenue: 1 },
{ audio: "*AcmeB*", type: "MID", targets: ["dag-892", "hab-812"], revenue: 4 },
{ audio: "*AcmeC*", type: "MID", targets: ["dag-892", "hab-812"], revenue: 5 }
]

ad_campaign_2 = [
{ audio: "*TacoCat*", type: "MID", targets: ["abc-123", "dag-892"], revenue: 3 }
]

ad_campaign_3 = [
{ audio: "*CorpCorpA*", type: "PRE", targets: ["abc-123", "dag-892"], revenue: 11 },
{ audio: "*CorpCorpB*", type: "POST", targets: ["abc-123", "dag-892"], revenue: 7 },
]
ad_campaign_4 = [
{ audio: "*FurryDogA*", type: "PRE", targets: ["dag-892", "hab-812", "efa-931"], revenue: 11 },
{ audio: "*FurryDogB*", type: "PRE", targets: ["dag-892", "hab-812", "efa-931"], revenue: 7 },
]

ad_campaign_5 = [
{ audio: "*GiantGiraffeA*", type: "MID", targets: ["paj-103", "abc-123"], revenue: 9 },
{ audio: "*GiantGiraffeB*", type: "MID", targets: ["paj-103", "abc-123"], revenue: 4 },
]