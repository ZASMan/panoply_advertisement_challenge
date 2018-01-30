require_relative '../ad_inserter.rb'


describe 'Ad Inserter' do
  # Episodes
  let!(:dag892) do
    Episode.new("++++[MID]++++[MID]++++[POST]", "dag-892")
  end

  let!(:abc_123) do
    Episode.new("[PRE]++++[MID]++++[MID]++[MID]++[POST]", "abc-123")
  end

  let!(:hab_812) do
    Episode.new("[PRE][PRE]++++[MID]++++[MID]++[MID]++[POST]", "hab-812")
  end

  let!(:efa_931) do
    Episode.new("[PRE][PRE]++++++++++", "efa-931")
  end

  let!(:paj_103) do
    Episode.new("++++[MID]+++++[MID]++++[MID]++[POST]", "paj-103")
  end

  # Ad Campaigns
  let!(:acme_a) do
    AdCampaign.new("*AcmeA*", "PRE", ["dag-892", "hab-812"], 1)
  end

  let!(:acme_b) do
    AdCampaign.new("*AcmeB*", "MID", ["dag-892", "hab-812"], 4)
  end

  let!(:acme_c) do
    AdCampaign.new("*AcmeC*", "MID", ["dag-892", "hab-812"], 5)
  end

  let!(:taco_cat) do
    AdCampaign.new("*TacoCat*", "MID", ["abc-123", "dag-892"], 3)
  end
  
  let!(:corp_corp_a) do
    AdCampaign.new("*CorpCorpA*", "PRE", ["abc-123", "dag-892"], 11)
  end

  let!(:corp_corp_b) do
    AdCampaign.new("*CorpCorpB*", "POST", ["abc-123", "dag-892"], 7)
  end

  let!(:furry_dog_a) do
    AdCampaign.new("*FurryDogA*", "PRE", "dag-892", "hab-812", "efa-931"], 11)
  end

  let!(:furry_dog_b) do
    AdCampaign.new("*FurryDogB*", "PRE", ["dag-892", "hab-812", "efa-931"], 7)
  end

  let!(:giant_giraffe_a) do
    AdCampaign.new("*GiantGiraffeA*", "MID", ["paj-103", "abc-123"], 9)
  end

  let!(:giant_giraffe_b) do
    AdCampaign.new("*GiantGiraffeB*", "MID", ["paj-103", "abc-123"], 4)
  end

  it 'returns a hash with audio, type, targets, and revenue' do

  end
end