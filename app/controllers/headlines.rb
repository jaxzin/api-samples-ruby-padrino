ApiSamplesRubyPadrino.controllers :headlines do

  get :index do
    espn = EspnRb.headlines
    @headlines = espn.all(:top)
    @accordion_headlines_nba = espn.nba(:top)
    @accordion_headlines_mlb = espn.mlb(:top)
    @accordion_headlines_nfl = espn.nfl(:top)
    render 'headlines/index'
  end

  
end
