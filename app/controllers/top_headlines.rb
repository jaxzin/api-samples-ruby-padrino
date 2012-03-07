ApiSamplesRubyPadrino.controllers :top_headlines do

  get :index do
    response = RestClient.get 'http://api.espn.com/v1/sports/news/headlines/top', {:accept => :json, :params => {:apikey => ENV['ESPN_APIKEY'] || ''}}
    headlinesData = ActiveSupport::JSON.decode(response.to_str)
    logger.debug headlinesData['headlines']
    @headlines = headlinesData['headlines']
    render 'top_headlines/index'
  end

  
end
