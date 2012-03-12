ApiSamplesRubyPadrino.controllers :top_headlines do

  get :index do
    espn = EspnRb.headlines
    @headlines = espn.all(:top).response['headlines']
    render 'top_headlines/index'
  end

  
end
