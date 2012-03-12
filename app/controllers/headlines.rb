ApiSamplesRubyPadrino.controllers :headlines do

  get :index do
    espn = EspnRb.headlines
    @headlines = espn.all(:top).response['headlines']
    @accordion_headlines_nba = espn.nba(:top).response['headlines']
    @accordion_headlines_mlb = espn.mlb(:top).response['headlines']
    @accordion_headlines_nfl = espn.nfl(:top).response['headlines']
    render 'headlines/index'
  end

  
end
